package Action;

import java.sql.Timestamp;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Newsinfo;
import Hibernate.PO.Userinfo;
import Hibernate.PO.Usermessagenew;

public class UserCDMessageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private int umnId;
	private Timestamp messageTime;
	private String messageContent;
	private int newsId;
	private String currentPage;

	public String create() throws Exception {
		
		currentPage = ServletActionContext.getRequest().getHeader("referer") 
        .replace("http://localhost:8080/0-BBBS/", ""); // get resource name only
		
		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			Userinfo currentUser = (Userinfo) cdu.sessionScope.get("currentcurrentUserInstance");
			Userinfo userinfo = (Userinfo) cdu.session.get(Userinfo.class, currentUser.getUserId());
			Newsinfo newsinfo = (Newsinfo) cdu.session.get(Newsinfo.class, newsId);

			Usermessagenew usermessagenew = new Usermessagenew();
			usermessagenew.setUserinfo(userinfo);
			usermessagenew.setMessageContent(messageContent);
			usermessagenew.setNewsinfo(newsinfo);
			
			System.out.println(newsinfo.getUsercollectnews().size());
			
			// 保存
			cdu.session.save(usermessagenew);
			cdu.transaction.commit();
			
			Newsinfo newsinfo_ = (Newsinfo) cdu.session.get(Newsinfo.class, newsId);
			
			// 提示
			String message = "发布成功！";
			cdu.context.getContext().put("message", message);
			
			
			// 再查 再put
			
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

	public String delete() throws Exception {

		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			Usermessagenew usermessagenew = (Usermessagenew) cdu.session.get(Usermessagenew.class, umnId);
			cdu.session.delete(usermessagenew);

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

	public Timestamp getMessageTime() {
		return messageTime;
	}

	public void setMessageTime(Timestamp messageTime) {
		this.messageTime = messageTime;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}

}
