package Action;

import java.util.List;
import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Managerinfo;
import Hibernate.PO.Newsinfo;
import Hibernate.PO.Usercollectnew;
import Hibernate.PO.Userinfo;
import Hibernate.PO.Usermessagenew;

public class DebugAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	public String execute() throws Exception {

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
			
			Userinfo currentUserInstance = (Userinfo) cdu.session.get(Userinfo.class, 2);
			cdu.sessionScope.put("currentUserInstance", currentUserInstance);
			
			Set<Usercollectnew> collectionList = currentUserInstance.getUsercollectnews();
			cdu.sessionScope.put("collectionList", collectionList);
			
			Set<Usermessagenew> userMessageList = currentUserInstance.getUsermessagenews();
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
