package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Hibernate.PO.Managerinfo;
import Hibernate.PO.Userinfo;
import dao.DAOImpl;

// 配置拦截器刷新valuestack返回值
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class LoginAction extends ActionSupport implements ModelDriven<Userinfo> {

	private static final long serialVersionUID = 1L;

	// 登陆参数
	private String UA; // 定义请求是来自android还是Web
	private Userinfo userinfo; // 输入输出参数

	// 模型层
	private DAOImpl<Userinfo> loginDao = new DAOImpl<Userinfo>(Userinfo.class);

	// 输出参数
	private String infoMessage;

	// 登陆
	public String login() throws Exception {
		System.out.println(userinfo.getUserName());
		String username = userinfo.getUserName();
		String password = userinfo.getUserPassword();

//		// 安卓端
//		if (UA != null && UA.trim() != "") {
//			Map<String, String> map = new HashMap<>();
//			map.put("userName", username);
//			map.put("userPassword", password);
//
//			userinfo = (Userinfo) loginDao.find(map, DAOImpl.FULL_MATCH).get(0);
//			if (userinfo != null) {
//				infoMessage = "登录成功";
//				return SUCCESS;
//			}
//			infoMessage = "登陆信息有误";
//			return SUCCESS;
//		}

		// Web端
		Map<String, String> map = new HashMap<>();
		map.put("userName", username);
		map.put("userPassword", password);
		List<Userinfo> userList = loginDao.find(map, DAOImpl.FULL_MATCH);

		if (userList != null && userList.size()!=0) {
			userinfo = userList.get(0);
			ActionContext.getContext().getSession().put("currentUserInstance", userinfo);
			return "user";
		}

		map.clear();
		map.put("magName", username);
		map.put("magPassword", password);
		Managerinfo managerinfo = null;
		loginDao.setClass(Managerinfo.class); // 必不可少
		List<Managerinfo> managerList = loginDao.find(map, DAOImpl.FULL_MATCH);
		loginDao.setClass(Userinfo.class);
		if (managerList != null && managerList.size()!=0) {
			managerinfo = managerList.get(0);
			ActionContext.getContext().getSession().put("currentUserInstance", managerinfo);
			return "manager";
		}
		infoMessage = "登录信息有误";
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
		loginDao.setClass(userinfo.getClass());
		loginDao.saveOrUpdate(userinfo);
		ActionContext.getContext().getSession().put("currentUserInstance", userinfo);
		infoMessage = "注册成功";
		return SUCCESS;
	}

	public String getUA() {
		return UA;
	}

	public void setUA(String uA) {
		UA = uA;
	}

	@Override
	public Userinfo getModel() {
		if (userinfo == null)
			userinfo = new Userinfo();
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
