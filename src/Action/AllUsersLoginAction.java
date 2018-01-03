package Action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Managerinfo;
import Hibernate.PO.Userinfo;

@SuppressWarnings("unchecked")
public class AllUsersLoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	// 登陆参数
	private String username;
	private String password;
	private String message;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String login() throws Exception {

		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			// 1. 用户
			cdu.createQuery("from Userinfo u where u.userName=? and u.userPassword=?");
			cdu.query.setString(0, username);
			cdu.query.setString(1, password);
			List<Userinfo> users = cdu.query.list();

			if (users.size() == 1) {
				Userinfo userinfo = (Userinfo) users.get(0);
				cdu.sessionScope.put("currentUserInstance", userinfo);
				return "user";
			}

			// 2. 管理员
			cdu.createQuery("from Managerinfo m where m.magId=? and m.magPassword=?");
			cdu.query.setString(0, username);
			cdu.query.setString(1, password);
			List<Managerinfo> managerUsers = cdu.query.list();
			if (managerUsers.size() == 1) {
				Managerinfo managerinfo = managerUsers.get(0);
				cdu.sessionScope.put("currentUserInstance", managerinfo);

				return "manager";
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

	public String logout() throws Exception {
		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();
		try {
			cdu.sessionScope.put("currentUserInstance", null);
			message = "您已退出";
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

}
