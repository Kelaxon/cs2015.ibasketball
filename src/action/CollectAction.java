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
import Hibernate.PO.Usercollectgame;
import Hibernate.PO.Usercollectnew;
import Hibernate.PO.Userinfo;
import dao.DAOImpl;

// �û��ղ��ղ�

//����������ˢ��valuestack����ֵ
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class CollectAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	// Ĭ���ղ�����
	private DAOImpl<Usercollectnew> collectDao = new DAOImpl<>(Usercollectnew.class);
	private List<Usercollectnew> newsCollectionList = new ArrayList<>();
	private List<Usercollectgame> gameCollectionList = new ArrayList<>();

	// �������
	private int newsId;
	private int gameId;
	private int ucgId;
	private int ucnId;
	private String UA;

	// ��������
	private String infoMessage; // ֪ͨ

	// �г������û������������ղ�
	public String listAll() {
		newsCollectionList = collectDao.listAll();
		collectDao.setClass(Usercollectgame.class);
		gameCollectionList = collectDao.listAll();
		collectDao.setClass(Usercollectnew.class);
		return SUCCESS;
	}

	// �г�ĳ�û���ȫ���ղ�
	public String listByUser() {
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "���ȵ�¼!";
			return ERROR;
		}

		// ��������û�ʵ��
		collectDao.setClass(Userinfo.class);
		userinfo = collectDao.getById(userinfo.getUserId());
		collectDao.setClass(Usercollectnew.class);

		newsCollectionList.clear();
		newsCollectionList.addAll(userinfo.getUsercollectnews());
		Collections.sort(newsCollectionList);

		newsCollectionList.clear();
		gameCollectionList.addAll(userinfo.getUsercollectgames());
		Collections.sort(gameCollectionList);

		if (UA != null && UA.trim() != "")
			infoMessage = "��ȡ�ɹ�";
		return SUCCESS;
	}

	// �����ղ�
	public String add() {

		// ����û�ʵ��
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "���ȵ�¼!";
			return ERROR;
		}

		if (newsId != 0) {
			// ����ղ�ʵ��
			collectDao.setClass(Newsinfo.class);
			Newsinfo newsinfo = collectDao.getById(newsId);
			collectDao.setClass(Usercollectnew.class);

			Usercollectnew newsCollection = new Usercollectnew();
			newsCollection.setNewsinfo(newsinfo);
			newsCollection.setUserinfo(userinfo);

			collectDao.saveOrUpdate(newsCollection);
			infoMessage = "���ӳɹ�!";

			return "news";
		}
		if (gameId != 0) {
			// ����ղ�ʵ��
			collectDao.setClass(Gameinfo.class);
			Gameinfo gameinfo = collectDao.getById(gameId);
			collectDao.setClass(Usercollectnew.class);

			Usercollectgame newsCollection = new Usercollectgame();
			newsCollection.setGameinfo(gameinfo);
			newsCollection.setUserinfo(userinfo);

			collectDao.setClass(Usercollectgame.class);
			collectDao.saveOrUpdate(newsCollection);
			collectDao.setClass(Usercollectnew.class);

			infoMessage = "���ӳɹ�!";
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

		if (ucnId != 0) {
			collectDao.delete(ucnId);
			infoMessage = "ɾ���ɹ�";
			return "news";
		}
		if (ucgId != 0) {
			collectDao.delete(ucgId);
			infoMessage = "ɾ���ɹ�";
			return "game";
		}
		return ERROR;
	}

	public String getUA() {
		return UA;
	}

	public void setUA(String uA) {
		UA = uA;
	}

	public int getUcgId() {
		return ucgId;
	}

	public void setUcgId(int ucgId) {
		this.ucgId = ucgId;
	}

	public int getUcnId() {
		return ucnId;
	}

	public void setUcnId(int ucnId) {
		this.ucnId = ucnId;
	}

	public List<Usercollectnew> getNewsCollectionList() {
		return newsCollectionList;
	}

	public void setNewsCollectionList(List<Usercollectnew> newsCollectionList) {
		this.newsCollectionList = newsCollectionList;
	}

	public List<Usercollectgame> getGameCollectionList() {
		return gameCollectionList;
	}

	public void setGameCollectionList(List<Usercollectgame> gameCollectionList) {
		this.gameCollectionList = gameCollectionList;
	}

	public int getGameId() {
		return gameId;
	}

	public void setGameId(int gameId) {
		this.gameId = gameId;
	}

	public List<Usercollectnew> getCollectionList() {
		return newsCollectionList;
	}

	public void setCollectionList(List<Usercollectnew> newsCollectionList) {
		this.newsCollectionList = newsCollectionList;
	}

	public List<Usercollectnew> getMessageList() {
		return newsCollectionList;
	}

	public void setMessageList(List<Usercollectnew> newsCollectionList) {
		this.newsCollectionList = newsCollectionList;
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