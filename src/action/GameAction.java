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

//����������ˢ��valuestack����ֵ
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class GameAction extends ActionSupport implements ModelDriven<Gameinfo> {
	private static final long serialVersionUID = 1L;

	// ģ�Ͳ�
	DAOImpl<Gameinfo> gameDao = new DAOImpl<>(Gameinfo.class);

	// ��ʾԪ��
	private List<Gameinfo> gameinfoList = new ArrayList<>();
	private Gameinfo gameinfo;
	private List<Usermessagegame> gameMessageList = new ArrayList<>(); // ���µ�����

	// �������
	private String searchKey;
	private String UA;

	// �������
	private String infoMessage;

	@Override
	public Gameinfo getModel() {
		if (gameinfo == null)
			gameinfo = new Gameinfo();
		return gameinfo;
	}

	// ˢ�����е�����
	public String listAll() {
		gameinfoList = gameDao.listAll();
		if (UA != null && UA.trim() != "")
			infoMessage = "success";
		return SUCCESS;
	}

	// ˢ���ض����µ���ϸ��Ϣ������
	public String listById() {
		System.out.println(gameinfo.getGameId() + "gameid");
		gameinfo = gameDao.getById(gameinfo.getGameId());
		gameMessageList.clear();
		System.out.println(gameinfo.getUsermessagegames() == null ? "game m empty" : "game m not empty");
		gameMessageList.addAll(gameinfo.getUsermessagegames());
		Collections.sort(gameMessageList);
		return SUCCESS;
	}

	// �������
	public String add() {
		gameDao.saveOrUpdate(gameinfo);
		infoMessage = "��ӳɹ�!";
		return SUCCESS;
	}

	// ��������
	public String update() {
		gameDao.saveOrUpdate(gameinfo);
		infoMessage = "���³ɹ�!";
		return SUCCESS;
	}

	// �������� ��ʱʵ��������������
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
