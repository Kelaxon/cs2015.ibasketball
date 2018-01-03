package Action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Newsinfo;

public class FirstEntryLoadDataAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	public String execute() throws Exception {

		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			cdu.createQuery("from Newsinfo");
			List<Newsinfo> newsInfoList = cdu.query.list();
			cdu.sessionScope.put("newsInfoList", newsInfoList);
			return SUCCESS;
			

		}catch(

	Exception e)
	{
		e.printStackTrace();
	}finally
	{
		cdu.closeConn();
	}return ERROR;
}

}
