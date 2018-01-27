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

// ����������ˢ��valuestack����ֵ
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class LoginAction extends ActionSupport implements ModelDriven<Userinfo> {

	private static final long serialVersionUID = 1L;

	// ��½����
	private String UA; // ��������������android����Web
	private Userinfo userinfo; // �����������

	// ģ�Ͳ�
	private DAOImpl<Userinfo> loginDao = new DAOImpl<Userinfo>(Userinfo.class);

	// �������
	private String infoMessage;

	// ��½
	public String login() throws Exception {
		System.out.println(userinfo.getUserName());
		String username = userinfo.getUserName();
		String password = userinfo.getUserPassword();

//		// ��׿��
//		if (UA != null && UA.trim() != "") {
//			Map<String, String> map = new HashMap<>();
//			map.put("userName", username);
//			map.put("userPassword", password);
//
//			userinfo = (Userinfo) loginDao.find(map, DAOImpl.FULL_MATCH).get(0);
//			if (userinfo != null) {
//				infoMessage = "��¼�ɹ�";
//				return SUCCESS;
//			}
//			infoMessage = "��½��Ϣ����";
//			return SUCCESS;
//		}

		// Web��
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
		loginDao.setClass(Managerinfo.class); // �ز�����
		List<Managerinfo> managerList = loginDao.find(map, DAOImpl.FULL_MATCH);
		loginDao.setClass(Userinfo.class);
		if (managerList != null && managerList.size()!=0) {
			managerinfo = managerList.get(0);
			ActionContext.getContext().getSession().put("currentUserInstance", managerinfo);
			return "manager";
		}
		infoMessage = "��¼��Ϣ����";
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
		loginDao.setClass(userinfo.getClass());
		loginDao.saveOrUpdate(userinfo);
		ActionContext.getContext().getSession().put("currentUserInstance", userinfo);
		infoMessage = "ע��ɹ�";
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
