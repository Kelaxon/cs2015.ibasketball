package action;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import component.FasadeCDU;
import component.QiniuUtil;
import dao.DAO;
import Hibernate.PO.Managerinfo;
import Hibernate.PO.Newsinfo;
import Hibernate.PO.Usercollectnew;
import Hibernate.PO.Userinfo;
import Hibernate.PO.Usermessagenew;

public class DebugAction extends ActionSupport implements ServletRequestAware {
	private static final long serialVersionUID = 1L;

	private File userAvatar;
	private String userAvatarFileName;
	private String userAvatarContentType;
	private HttpServletRequest servletRequest;

	public File getUserAvatar() {
		return userAvatar;
	}

	public void setUserAvatar(File userAvatar) {
		this.userAvatar = userAvatar;
	}

	public String getUserAvatarFileName() {
		return userAvatarFileName;
	}

	public void setUserAvatarFileName(String userAvatarFileName) {
		this.userAvatarFileName = userAvatarFileName;
	}

	public String getUserAvatarContentType() {
		return userAvatarContentType;
	}

	public void setUserAvatarContentType(String userAvatarContentType) {
		this.userAvatarContentType = userAvatarContentType;
	}

	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}
	

	public String uploadTest() throws IOException {
		String filePath = servletRequest.getSession().getServletContext().getRealPath("/");
		File tempfile = new File(filePath, this.userAvatarFileName);
		FileUtils.copyFile(this.userAvatar, tempfile);
		try {
			new QiniuUtil().uploadToQiNiuYun(userAvatarFileName, userAvatar);
			String userAvatarUrl = QiniuUtil.DOMAIN + userAvatarFileName;
			System.out.println(userAvatarUrl);
		} catch (IOException e) {
			e.printStackTrace();
		}		
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String debug() throws Exception {

		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {

			cdu.createQuery("from Newsinfo");
			List<Newsinfo> newsInfoList = cdu.query.list();
			cdu.sessionScope.put("newsInfoList", newsInfoList);

			cdu.createQuery("from Userinfo");
			List<Userinfo> userInfoList = cdu.query.list();
			cdu.sessionScope.put("userInfoList", userInfoList);

			Managerinfo managerInstance = (Managerinfo) cdu.session.get(Managerinfo.class, "1");
			cdu.sessionScope.put("managerInstance", managerInstance);

			Userinfo currentcurrentUserInstance = (Userinfo) cdu.session.get(Userinfo.class, 2);
			cdu.sessionScope.put("currentcurrentUserInstance", currentcurrentUserInstance);

			Set<Usercollectnew> collectionList = currentcurrentUserInstance.getUsercollectnews();
			cdu.sessionScope.put("collectionList", collectionList);

			Set<Usermessagenew> userMessageList = currentcurrentUserInstance.getUsermessagenews();
			cdu.sessionScope.put("userMessageList", userMessageList);
			return INPUT;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

}
