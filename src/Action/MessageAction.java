package Action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import DAO.MessageDao;
import DAO.MessageDaoImpl;
import Hibernate.PO.Userinfo;
import Hibernate.PO.Usermessagenew;

public class MessageAction extends ActionSupport implements ModelDriven<Usermessagenew> {
	private static final long serialVersionUID = 1L;

	private MessageDao messageDao = new MessageDaoImpl();
	private List<Usermessagenew> messageList;

	// 传入参数
	private int newsId;
	private int umnId;

	// 传出参数
	private String infoMessage; // 通知

	// 模型层
	private Usermessagenew message;

	// 列出所有用户的所有留言
	public String listAll() {
		messageList = messageDao.listAll();
		return SUCCESS;
	}

	// 列出某用户的全部留言
	public String listById() {
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "请先登录!";
//			ActionContext.getContext().getSession().put("message", "请先登录!");
			return ERROR;
		}
		messageList = messageDao.listById(userinfo.getUserId());
		return SUCCESS;
	}

	// 添加
	public String add() {
		messageDao.saveOrUpdate(message);
		infoMessage = "添加成功!";
//		ActionContext.getContext().getSession().put("message", "添加成功!");
		return SUCCESS;
	}

	// 删除
	public String delete() {
		messageDao.delete(umnId);
		infoMessage = "删除成功";
//		ActionContext.getContext().getSession().put("message", "删除成功!");
		return SUCCESS;
	}

	public List<Usermessagenew> getMessageList() {
		return messageList;
	}

	public void setMessageList(List<Usermessagenew> messageList) {
		this.messageList = messageList;
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public MessageDao getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	@Override
	public Usermessagenew getModel() {
		return message;
	}

	public Usermessagenew getMessage() {
		return message;
	}

	public void setMessage(Usermessagenew message) {
		this.message = message;
	}

	public int getUmnId() {
		return umnId;
	}

	public void setUmnId(int umnId) {
		this.umnId = umnId;
	}

	public String getInfoMessage() {
		return infoMessage;
	}

	public void setInfoMessage(String infoMessage) {
		this.infoMessage = infoMessage;
	}

}
