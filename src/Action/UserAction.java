package Action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Component.QiniuUtil;
import DAO.UserDao;
import DAO.UserDaoImpl;
import Hibernate.PO.Userinfo;

public class UserAction extends ActionSupport implements ModelDriven<Userinfo>, ServletRequestAware {

	private static final long serialVersionUID = 1L;
	private UserDao userDao = new UserDaoImpl();

	private List<Userinfo> userList;
	private Userinfo userinfo = new Userinfo();

	// �ϴ�ͷ����
	private File userAvatarFile;
	private String userAvatarFileFileName;
	private String userAvatarFileContentType;
	private HttpServletRequest servletRequest;

	// ����û�
	public String add() {
		userDao.saveOrUpdate(userinfo);
		return SUCCESS;
	}

	// �޸��û���Ϣ
	public String update() throws IOException {

		// �û�û�޸������ʱ�򲻸���
		if (userinfo.getUserPassword().trim() == "") {
			Userinfo currentUser = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
			userinfo.setUserPassword(currentUser.getUserPassword());
		}
		
		// �ϴ�ͷ��
		String filePath = servletRequest.getSession().getServletContext().getRealPath("/");
		File tempfile = new File(filePath, this.userAvatarFileFileName);
		FileUtils.copyFile(this.userAvatarFile, tempfile);
		try {
			
			// ƴ���ļ���
			System.out.println(userAvatarFileFileName);
			String[] suffix = userAvatarFileFileName.split("\\."); // Ҫת�壡
			userAvatarFileFileName = userinfo.getUserName()+suffix[suffix.length];
			new QiniuUtil().uploadToQiNiuYun(userAvatarFileFileName, userAvatarFile);
			String userAvatarFileUrl = QiniuUtil.DOMAIN + userAvatarFileFileName;
			userinfo.setUserAvatar(userAvatarFileUrl);
		} catch (IOException e) {
			e.printStackTrace();
		}
		userDao.saveOrUpdate(userinfo);
		return SUCCESS;
	}

	// ɾ���û�
	public String Delete() {
		userDao.delete(userinfo);
		return SUCCESS;
	}

	// ˢ�µ����û�
	public String listById() {
		Userinfo currentUser = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (currentUser == null) {
			ActionContext.getContext().getSession().put("message", "���ȵ�¼!");
			return ERROR;
		}
		userinfo = userDao.listById(currentUser.getUserId());
		return SUCCESS;
	}

	public String listAll() {
		userDao.listAll();
		return SUCCESS;
	}

	@Override
	public Userinfo getModel() {
		return userinfo;
	}

	public List<Userinfo> getUserList() {
		return userList;
	}

	public void setUserList(List<Userinfo> userList) {
		this.userList = userList;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public File getuserAvatarFile() {
		return userAvatarFile;
	}

	public void setuserAvatarFile(File userAvatarFile) {
		this.userAvatarFile = userAvatarFile;
	}

	public String getuserAvatarFileFileName() {
		return userAvatarFileFileName;
	}

	public void setuserAvatarFileFileName(String userAvatarFileFileName) {
		this.userAvatarFileFileName = userAvatarFileFileName;
	}

	public String getuserAvatarFileContentType() {
		return userAvatarFileContentType;
	}

	public void setuserAvatarFileContentType(String userAvatarFileContentType) {
		this.userAvatarFileContentType = userAvatarFileContentType;
	}

	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}
}
