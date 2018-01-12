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
	
	// ֧�ֶ���ļ��ϴ�
	public void uploadToQiNiuYun(String fileName, File file) throws IOException {
		// ����һ����ָ��Zone�����������
		Configuration cfg = new Configuration(Zone.zone1());
		// ...���������ο���ע��
		// ���� Zone.zone0()
		// ���� Zone.zone1()
		// ���� Zone.zone2()
		// ���� Zone.zoneNa0()

		UploadManager uploadManager = new UploadManager(cfg);
		// ...�����ϴ�ƾ֤��Ȼ��׼���ϴ�
		String accessKey = AKEY;// �������滻���Լ���AK
		String secretKey = SKEY;// �������滻���Լ���SK
		String bucket = BUCK;// �������滻���Լ���bucket--�ռ���

		// Ĭ�ϲ�ָ��key������£����ļ����ݵ�hashֵ��Ϊ�ļ���
		InputStream inputStream = new FileInputStream(file);
		ByteArrayOutputStream swapStream = new ByteArrayOutputStream();
		byte[] buff = new byte[600]; // buff���ڴ��ѭ����ȡ����ʱ����
		int rc = 0;
		while ((rc = inputStream.read(buff, 0, 100)) > 0) {
			swapStream.write(buff, 0, rc);
		}
		byte[] uploadBytes = swapStream.toByteArray(); // uploadBytes
														// Ϊת��֮��Ľ��
		Auth auth = Auth.create(accessKey, secretKey);
		String upToken = auth.uploadToken(bucket);
		try {
			Response response = uploadManager.put(uploadBytes, fileName, upToken);
			// �����ϴ��ɹ��Ľ��
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
