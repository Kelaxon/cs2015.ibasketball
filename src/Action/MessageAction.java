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

	// �������
	private int newsId;
	private int umnId;

	// ��������
	private String infoMessage; // ֪ͨ

	// ģ�Ͳ�
	private Usermessagenew message;

	// �г������û�����������
	public String listAll() {
		messageList = messageDao.listAll();
		return SUCCESS;
	}

	// �г�ĳ�û���ȫ������
	public String listById() {
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "���ȵ�¼!";
//			ActionContext.getContext().getSession().put("message", "���ȵ�¼!");
			return ERROR;
		}
		messageList = messageDao.listById(userinfo.getUserId());
		return SUCCESS;
	}

	// ���
	public String add() {
		messageDao.saveOrUpdate(message);
		infoMessage = "��ӳɹ�!";
//		ActionContext.getContext().getSession().put("message", "��ӳɹ�!");
		return SUCCESS;
	}

	// ɾ��
	public String delete() {
		messageDao.delete(umnId);
		infoMessage = "ɾ���ɹ�";
//		ActionContext.getContext().getSession().put("message", "ɾ���ɹ�!");
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
