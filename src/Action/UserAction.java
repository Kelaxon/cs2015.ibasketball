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

	// 上传头像用
	private File userAvatarFile;
	private String userAvatarFileFileName;
	private String userAvatarFileContentType;
	private HttpServletRequest servletRequest;

	// 添加用户
	public String add() {
		userDao.saveOrUpdate(userinfo);
		return SUCCESS;
	}

	// 修改用户信息
	public String update() throws IOException {

		// 用户没修改密码的时候不更新
		if (userinfo.getUserPassword().trim() == "") {
			Userinfo currentUser = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
			userinfo.setUserPassword(currentUser.getUserPassword());
		}
		
		// 上传头像
		String filePath = servletRequest.getSession().getServletContext().getRealPath("/");
		File tempfile = new File(filePath, this.userAvatarFileFileName);
		FileUtils.copyFile(this.userAvatarFile, tempfile);
		try {
			
			// 拼接文件名
			System.out.println(userAvatarFileFileName);
			String[] suffix = userAvatarFileFileName.split("\\."); // 要转义！
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

	// 删除用户
	public String Delete() {
		userDao.delete(userinfo);
		return SUCCESS;
	}

	// 刷新单个用户
	public String listById() {
		Userinfo currentUser = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (currentUser == null) {
			ActionContext.getContext().getSession().put("message", "请先登录!");
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
