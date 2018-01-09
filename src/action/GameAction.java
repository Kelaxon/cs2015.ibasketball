package action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.DAOImpl;
import Hibernate.PO.Gameinfo;
import Hibernate.PO.Usermessagegame;

//配置拦截器刷新valuestack返回值
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class GameAction extends ActionSupport implements ModelDriven<Gameinfo> {
	private static final long serialVersionUID = 1L;

	// 模型层
	DAOImpl<Gameinfo> gameDao = new DAOImpl<>(Gameinfo.class);

	// 显示元素
	private List<Gameinfo> gameinfoList = new ArrayList<>();
	private Gameinfo gameinfo;
	private List<Usermessagegame> gameMessageList = new ArrayList<>(); // 赛事的留言

	// 输入参数
	private String searchKey;
	private String UA;

	// 输出参数
	private String infoMessage;

	@Override
	public Gameinfo getModel() {
		if (gameinfo == null)
			gameinfo = new Gameinfo();
		return gameinfo;
	}

	// 刷新所有的赛事
	public String listAll() {
		gameinfoList = gameDao.listAll();
		if (UA != null && UA.trim() != "")
			infoMessage = "success";
		return SUCCESS;
	}

	// 刷新特定赛事的详细信息和留言
	public String listById() {
		System.out.println(gameinfo.getGameId() + "gameid");
		gameinfo = gameDao.getById(gameinfo.getGameId());
		gameMessageList.clear();
		System.out.println(gameinfo.getUsermessagegames() == null ? "game m empty" : "game m not empty");
		gameMessageList.addAll(gameinfo.getUsermessagegames());
		Collections.sort(gameMessageList);
		return SUCCESS;
	}

	// 添加赛事
	public String add() {
		gameDao.saveOrUpdate(gameinfo);
		infoMessage = "添加成功!";
		return SUCCESS;
	}

	// 更新赛事
	public String update() {
		gameDao.saveOrUpdate(gameinfo);
		infoMessage = "更新成功!";
		return SUCCESS;
	}

	// 搜索赛事 暂时实现搜索赛事内容
	public String find() {
		if (searchKey != null && searchKey.trim() != "") {
			Map<String, String> map = new HashMap<>();
			map.put("teaminfoByGameTeam1Id.teamName", searchKey);
			map.put("teaminfoByGameTeam2Id.teamName", searchKey);
			gameinfoList = gameDao.find(map, DAOImpl.FUZZY_MATCH);
		}
		if (gameinfoList == null)
			gameinfoList = new ArrayList<>();
		return SUCCESS;
	}

	public List<Gameinfo> getGameinfoList() {
		return gameinfoList;
	}

	public void setGameinfoList(List<Gameinfo> gameinfoList) {
		this.gameinfoList = gameinfoList;
	}

	public Gameinfo getGameinfo() {
		return gameinfo;
	}

	public void setGameinfo(Gameinfo gameinfo) {
		this.gameinfo = gameinfo;
	}

	public List<Usermessagegame> getGameMessageList() {
		return gameMessageList;
	}

	public void setGameMessageList(List<Usermessagegame> gameMessageList) {
		this.gameMessageList = gameMessageList;
	}

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}

	public String getUA() {
		return UA;
	}

	public void setUA(String uA) {
		UA = uA;
	}

	public String getInfoMessage() {
		return infoMessage;
	}

	public void setInfoMessage(String infoMessage) {
		this.infoMessage = infoMessage;
	}

}
