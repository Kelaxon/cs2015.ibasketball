package action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Hibernate.PO.Gameinfo;
import Hibernate.PO.Newsinfo;
import Hibernate.PO.Usermessagegame;
import Hibernate.PO.Usermessagenew;
import Hibernate.PO.Userinfo;
import dao.DAOImpl;

// �û���������

//����������ˢ��valuestack����ֵ
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class MessageAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	// Ĭ����������
	private DAOImpl<Usermessagenew> messageDao = new DAOImpl<>(Usermessagenew.class);
	private List<Usermessagenew> newsMessageList = new ArrayList<>();
	private List<Usermessagegame> gameMessageList = new ArrayList<>();

	// �������
	private int newsId; // �����
	private int gameId;
	private String messageContent;
	private int umgId; // ɾ����
	private int umnId;

	// ��������
	private String infoMessage; // ֪ͨ

	// �г������û���������������
	public String listAll() {
		newsMessageList = messageDao.listAll();
		messageDao.setClass(Usermessagegame.class);
		gameMessageList = messageDao.listAll();
		messageDao.setClass(Usermessagenew.class);
		return SUCCESS;
	}

	// �г�ĳ�û���ȫ������
	public String listByUser() {
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "���ȵ�¼!";
			return ERROR;
		}

		// ��������û�ʵ��
		messageDao.setClass(Userinfo.class);
		userinfo = messageDao.getById(userinfo.getUserId());
		messageDao.setClass(Usermessagenew.class);

		newsMessageList.clear();
		newsMessageList.addAll(userinfo.getUsermessagenews());
		Collections.sort(newsMessageList);

		newsMessageList.clear();
		gameMessageList.addAll(userinfo.getUsermessagegames());
		Collections.sort(gameMessageList);
		return SUCCESS;
	}

	// �������
	public String add() {

		// ����û�ʵ��
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "���ȵ�¼!";
			return ERROR;
		}

		if (newsId != 0) {
			// �������ʵ��
			messageDao.setClass(Newsinfo.class);
			Newsinfo newsinfo = messageDao.getById(newsId);
			messageDao.setClass(Usermessagenew.class);

			Usermessagenew newsMessage = new Usermessagenew();
			newsMessage.setNewsinfo(newsinfo);
			newsMessage.setUserinfo(userinfo);
			newsMessage.setMessageContent(messageContent);
			
			messageDao.saveOrUpdate(newsMessage);
			infoMessage = "��ӳɹ�!";

			return "news";
		}
		if (gameId != 0) {

			// �������ʵ��
			messageDao.setClass(Gameinfo.class);
			Gameinfo gameinfo = messageDao.getById(gameId);
			messageDao.setClass(Usermessagenew.class);

			Usermessagegame gameMessage = new Usermessagegame();
			gameMessage.setGameinfo(gameinfo);
			gameMessage.setUserinfo(userinfo);
			gameMessage.setMessageContent(messageContent);

			messageDao.setClass(Usermessagegame.class);
			messageDao.saveOrUpdate(gameMessage);
			messageDao.setClass(Usermessagenew.class);

			infoMessage = "��ӳɹ�!";
			return "game";
		}
		return ERROR;
	}

	// ɾ��
	public String delete() {

		// ����û�ʵ��
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "���ȵ�¼!";
			return ERROR;
		}

		if (umnId != 0) {
			messageDao.delete(umnId);
			infoMessage = "ɾ���ɹ�";
			return SUCCESS;
		}
		if (umgId != 0) {
			messageDao.setClass(Usermessagegame.class);
			messageDao.delete(umgId);
			messageDao.setClass(Usermessagenew.class);
			infoMessage = "ɾ���ɹ�";
			return SUCCESS;
		}
		return ERROR;
	}

	public List<Usermessagenew> getNewsMessageList() {
		return newsMessageList;
	}

	public void setNewsMessageList(List<Usermessagenew> newsMessageList) {
		this.newsMessageList = newsMessageList;
	}

	public List<Usermessagegame> getGameMessageList() {
		return gameMessageList;
	}

	public void setGameMessageList(List<Usermessagegame> gameMessageList) {
		this.gameMessageList = gameMessageList;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	public int getUmgId() {
		return umgId;
	}

	public void setUmgId(int umgId) {
		this.umgId = umgId;
	}

	public int getUmnId() {
		return umnId;
	}

	public void setUmnId(int umnId) {
		this.umnId = umnId;
	}


	public int getGameId() {
		return gameId;
	}

	public void setGameId(int gameId) {
		this.gameId = gameId;
	}

	public List<Usermessagenew> getCollectionList() {
		return newsMessageList;
	}

	public void setCollectionList(List<Usermessagenew> newsMessageList) {
		this.newsMessageList = newsMessageList;
	}

	public List<Usermessagenew> getMessageList() {
		return newsMessageList;
	}

	public void setMessageList(List<Usermessagenew> newsMessageList) {
		this.newsMessageList = newsMessageList;
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public String getInfoMessage() {
		return infoMessage;
	}

	public void setInfoMessage(String infoMessage) {
		this.infoMessage = infoMessage;
	}

}
