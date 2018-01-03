package Action;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Usermessagenew;

public class ManagerDMessageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private int umnId;

	public String delete() throws Exception {

		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			Usermessagenew usermessagenew = cdu.session.
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

	public int getUmnId() {
		return umnId;
	}

	public void setUmnId(int umnId) {
		this.umnId = umnId;
	}

}
