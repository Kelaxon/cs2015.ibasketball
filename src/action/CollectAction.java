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

// 用户收藏收藏

//配置拦截器刷新valuestack返回值
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class CollectAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	// 默认收藏新闻
	private DAOImpl<Usercollectnew> collectDao = new DAOImpl<>(Usercollectnew.class);
	private List<Usercollectnew> newsCollectionList = new ArrayList<>();
	private List<Usercollectgame> gameCollectionList = new ArrayList<>();

	// 传入参数
	private int newsId;
	private int gameId;
	private int ucgId;
	private int ucnId;
	private String UA;

	// 传出参数
	private String infoMessage; // 通知

	// 列出所有用户的所有新闻收藏
	public String listAll() {
		collectDao.setClass(Usercollectnew.class);
		newsCollectionList = collectDao.listAll();
		collectDao.setClass(Usercollectgame.class);
		gameCollectionList = collectDao.listAll();
		collectDao.setClass(Usercollectnew.class);
		return SUCCESS;
	}

	// 列出某用户的全部收藏
	public String listByUser() {
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "请先登录!";
			return ERROR;
		}

		// 获得最新用户实体
		collectDao.setClass(Userinfo.class);
		userinfo = collectDao.getById(userinfo.getUserId());
		collectDao.setClass(Usercollectnew.class);

		newsCollectionList.clear();
		newsCollectionList.addAll(userinfo.getUsercollectnews());
		Collections.sort(newsCollectionList);

		gameCollectionList.clear();
		gameCollectionList.addAll(userinfo.getUsercollectgames());
		Collections.sort(gameCollectionList);

		if (UA != null && UA.trim() != "")
			infoMessage = "获取成功";
		return SUCCESS;
	}

	// 添加收藏
	public String add() {

		// 获得用户实体
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "请先登录!";
			return ERROR;
		}

		if (newsId != 0) {
			// 获得收藏实体
			collectDao.setClass(Newsinfo.class);
			Newsinfo newsinfo = collectDao.getById(newsId);
			collectDao.setClass(Usercollectnew.class);

			Usercollectnew newsCollection = new Usercollectnew();
			newsCollection.setNewsinfo(newsinfo);
			newsCollection.setUserinfo(userinfo);

			collectDao.saveOrUpdate(newsCollection);
			infoMessage = "添加成功!";

			return "news";
		}
		if (gameId != 0) {
			// 获得收藏实体
			collectDao.setClass(Gameinfo.class);
			Gameinfo gameinfo = collectDao.getById(gameId);
			collectDao.setClass(Usercollectnew.class);

			Usercollectgame newsCollection = new Usercollectgame();
			newsCollection.setGameinfo(gameinfo);
			newsCollection.setUserinfo(userinfo);

			collectDao.setClass(Usercollectgame.class);
			collectDao.saveOrUpdate(newsCollection);
			collectDao.setClass(Usercollectnew.class);

			infoMessage = "添加成功!";
			return "game";
		}
		return ERROR;
	}

	// 删除
	public String delete() {
		System.out.println("ucgId"+""+ucgId);
		// 获得用户实体
		Userinfo userinfo = (Userinfo) ActionContext.getContext().getSession().get("currentUserInstance");
		if (userinfo == null) {
			infoMessage = "请先登录!";
			return ERROR;
		}

		if (ucnId != 0) {
			collectDao.delete(ucnId);
			infoMessage = "删除成功";
			return SUCCESS;
		}
		if (ucgId != 0) {
			collectDao.setClass(Usercollectgame.class);
			collectDao.delete(ucgId);
			collectDao.setClass(Usercollectnew.class);
			infoMessage = "删除成功";
			return SUCCESS;
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
