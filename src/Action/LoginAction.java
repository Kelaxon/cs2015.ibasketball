package Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import DAO.ManagerDao;
import DAO.ManagerDaoImpl;
import DAO.UserDao;
import DAO.UserDaoImpl;
import Hibernate.PO.Managerinfo;
import Hibernate.PO.Userinfo;

public class LoginAction extends ActionSupport implements ModelDriven<Userinfo> {

	private static final long serialVersionUID = 1L;

	// ��½����
	private String username;
	private String password;
	private String message;

	// ģ�Ͳ�
	private UserDao userDao = new UserDaoImpl();
	private Userinfo userinfo = new Userinfo(); // ע��userʹ�õ�Model
	private ManagerDao managerDao = new ManagerDaoImpl();

	// �������
	private String infoMessage;

	// ��½
	public String login() {

		if (ActionContext.getContext().getSession().get("currentUserInstance") != null) {
			infoMessage = "���ѵ�½";
			return INPUT;
		}

		if (userDao.isExist(username, password)) {
			userinfo = userDao.getByName(username);
			if (userinfo == null)
				System.out.println("��½Ϊ��");
			ActionContext.getContext().getSession().put("currentUserInstance", userinfo);
			return "user";
		}

		if (managerDao.isExist(username, password)) {
			Managerinfo managerinfo = managerDao.getByName(username);
			ActionContext.getContext().getSession().put("currentUserInstance", managerinfo);
			return "manager";
		}

		infoMessage = "��½��Ϣ����ȷ��";
		return ERROR;
	}

	// �ǳ�
	public String logout() throws Exception {
		ActionContext.getContext().getSession().put("currentUserInstance", null);
		infoMessage = "�����˳�";
		return SUCCESS;
	}

	// ע��
	public String register() {
		userDao.saveOrUpdate(userinfo);

		ActionContext.getContext().getSession().put("currentUserInstance", userinfo);
		infoMessage = "ע��ɹ�";
		return SUCCESS;
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public Userinfo getModel() {
		return userinfo;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public String getInfoMessage() {
		return infoMessage;
	}

	public void setInfoMessage(String infoMessage) {
		this.infoMessage = infoMessage;
	}

}
