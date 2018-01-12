package component;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

public class QiniuUtil {
	private static String AKEY = "GCVdaxBcLWxq2dE4funKT0FAx0kQmSkYa7YSDXLG";
	private static String SKEY = "5OQkvlyxQ594Y2i6_VfO8bVxlTsOSm1uzRk3hOGn";
	private static String BUCK = "bbbs";
	public static String DOMAIN = "http://p22p064rh.bkt.clouddn.com/";
	private Auth auth = Auth.create(AKEY, SKEY);
	
	// 支持多个文件上传
	public void uploadToQiNiuYun(String fileName, File file) throws IOException {
		// 构造一个带指定Zone对象的配置类
		Configuration cfg = new Configuration(Zone.zone1());
		// ...其他参数参考类注释
		// 华东 Zone.zone0()
		// 华北 Zone.zone1()
		// 华南 Zone.zone2()
		// 北美 Zone.zoneNa0()

		UploadManager uploadManager = new UploadManager(cfg);
		// ...生成上传凭证，然后准备上传
		String accessKey = AKEY;// 这里请替换成自己的AK
		String secretKey = SKEY;// 这里请替换成自己的SK
		String bucket = BUCK;// 这里请替换成自己的bucket--空间名

		// 默认不指定key的情况下，以文件内容的hash值作为文件名
		InputStream inputStream = new FileInputStream(file);
		ByteArrayOutputStream swapStream = new ByteArrayOutputStream();
		byte[] buff = new byte[600]; // buff用于存放循环读取的临时数据
		int rc = 0;
		while ((rc = inputStream.read(buff, 0, 100)) > 0) {
			swapStream.write(buff, 0, rc);
		}
		byte[] uploadBytes = swapStream.toByteArray(); // uploadBytes
														// 为转换之后的结果
		Auth auth = Auth.create(accessKey, secretKey);
		String upToken = auth.uploadToken(bucket);
		try {
			Response response = uploadManager.put(uploadBytes, fileName, upToken);
			// 解析上传成功的结果
			DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
			System.out.println(putRet.key);
			System.out.println(putRet.hash);
		} catch (QiniuException ex) {
			Response r = ex.response;
			System.err.println(r.toString());
			try {
				System.err.println(r.bodyString());
			} catch (QiniuException ex2) {
				// ignore
			}
		}

	}
}
