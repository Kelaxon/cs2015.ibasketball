package Action;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Userinfo;

public class UserUInfoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String userPassword;
	private String userAddr;
	private String userEmail;
	private String userTel;
	private String userAvatar;
	private String userTruname;
	private String userIntro;
	private String message;

	public String update() throws Exception {

		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			Userinfo currentUser = (Userinfo) cdu.sessionScope.get("currentUserInstance");
			Userinfo userinfo = (Userinfo) cdu.session.get(Userinfo.class, currentUser.getUserId());

			if (!(userPassword == null || userPassword.trim().equals("")))
				userinfo.setUserPassword(userPassword);

			userinfo.setUserAddr(userAddr);
			userinfo.setUserEmail(userEmail);
			userinfo.setUserTel(userTel);
			userinfo.setUserAvatar(userAvatar);
			userinfo.setUserTruname(userTruname);
			userinfo.setUserIntro(userIntro);
			
			// 不用save自动会保存

			cdu.sessionScope.put("currentUserInstance", userinfo);
			String message = "修改成功！";
			cdu.context.getContext().put("message", message);
			return SUCCESS;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserTel() {
		return userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String getUserAvatar() {
		return userAvatar;
	}

	public void setUserAvatar(String userAvatar) {
		this.userAvatar = userAvatar;
	}

	public String getUserTruname() {
		return userTruname;
	}

	public void setUserTruname(String userTruname) {
		this.userTruname = userTruname;
	}

	public String getUserIntro() {
		return userIntro;
	}

	public void setUserIntro(String userIntro) {
		this.userIntro = userIntro;
	}

}