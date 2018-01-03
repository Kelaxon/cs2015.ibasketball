package JsonAction;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Userinfo;

public class UserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	// ��½����
	private String username;
	private String password;

	// ���ض������ƻ�Ҫ��struts.xml������
	private Userinfo currentUser; // ʹ��json���ص���ֵ
	private String message; // ʹ��json���ض���

	public String returnMessage() {
		message = "����";
		return SUCCESS;
	}

	public String login() {
		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			cdu.createQuery("from Userinfo u where u.userName=? and u.userPassword=?");
			cdu.query.setString(0, username);
			cdu.query.setString(1, password);
			List<Userinfo> users = cdu.query.list();

			if (users.size() == 1) {
				currentUser = (Userinfo) users.get(0);
				message = "��½�ɹ�";
			}
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

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

	public Userinfo getCurrentUser() {
		return currentUser;
	}

	public void setCurrentUser(Userinfo currentUser) {
		this.currentUser = currentUser;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
