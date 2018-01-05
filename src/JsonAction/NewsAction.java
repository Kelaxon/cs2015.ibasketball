package JsonAction;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Component.FasadeCDU;
import Hibernate.PO.Newsinfo;
import Hibernate.PO.Usermessagenew;

public class NewsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private List<Newsinfo> newsList;
	private List<Usermessagenew> messageList;
	private String message;

	public String getAll() {
		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			cdu.createQuery("from Newsinfo");
			newsList = (List<Newsinfo>) cdu.query.list();
			message = "获取成功";
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

	public List<Newsinfo> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<Newsinfo> newsList) {
		this.newsList = newsList;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
