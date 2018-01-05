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

	// 登陆参数
	private String username;
	private String password;
	private String message;

	// 模型层
	private UserDao userDao = new UserDaoImpl();
	private Userinfo userinfo = new Userinfo(); // 注册user使用的Model
	private ManagerDao managerDao = new ManagerDaoImpl();

	// 输出参数
	private String infoMessage;

	// 登陆
	public String login() {

		if (ActionContext.getContext().getSession().get("currentUserInstance") != null) {
			infoMessage = "您已登陆";
			return INPUT;
		}

		if (userDao.isExist(username, password)) {
			userinfo = userDao.getByName(username);
			if (userinfo == null)
				System.out.println("登陆为空");
			ActionContext.getContext().getSession().put("currentUserInstance", userinfo);
			return "user";
		}

		if (managerDao.isExist(username, password)) {
			Managerinfo managerinfo = managerDao.getByName(username);
			ActionContext.getContext().getSession().put("currentUserInstance", managerinfo);
			return "manager";
		}

		infoMessage = "登陆信息不正确！";
		return ERROR;
	}

	// 登出
	public String logout() throws Exception {
		ActionContext.getContext().getSession().put("currentUserInstance", null);
		infoMessage = "您已退出";
		return SUCCESS;
	}

	// 注册
	public String register() {
		userDao.saveOrUpdate(userinfo);

		ActionContext.getContext().getSession().put("currentUserInstance", userinfo);
		infoMessage = "注册成功";
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
