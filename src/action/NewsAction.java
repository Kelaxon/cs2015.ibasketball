package action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.DAOImpl;
import Hibernate.PO.Managerinfo;
import Hibernate.PO.Newsinfo;
import Hibernate.PO.Userinfo;
import Hibernate.PO.Usermessagenew;

//����������ˢ��valuestack����ֵ
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class NewsAction extends ActionSupport implements ModelDriven<Newsinfo> {
	private static final long serialVersionUID = 1L;

	// ģ�Ͳ�
	DAOImpl<Newsinfo> newsDao = new DAOImpl<>(Newsinfo.class);

	// ��ʾԪ��
	private List<Newsinfo> newsInfoList = new ArrayList<>();
	private Newsinfo newsinfo;
	private List<Usermessagenew> newMessageList = new ArrayList<>(); // ���ŵ�����

	// �������
	private String searchKey;
	private String UA;

	// �������
	private String infoMessage;

	@Override
	public Newsinfo getModel() {
		if (newsinfo == null)
			newsinfo = new Newsinfo();
		return newsinfo;
	}

	// ˢ�����е�����
	public String listAll() {
		newsInfoList = newsDao.listAll();
		if (UA != null && UA.trim() != "")
			infoMessage = "success";
		return SUCCESS;
	}

	// ˢ���ض����ŵ���ϸ��Ϣ������
	public String listById() {
		newsinfo = newsDao.getById(newsinfo.getNewsId());
		newMessageList.clear();
		newMessageList.addAll(newsinfo.getUsermessagenews());
		Collections.sort(newMessageList);
		return SUCCESS;
	}

	// �������
	public String add() {
		newsDao.saveOrUpdate(newsinfo);
		infoMessage = "��ӳɹ�!";
		return SUCCESS;
	}

	// �������
	public String delete() {
		if (newsinfo.getNewsId() != 0) {
			
			System.out.println(newsinfo.getNewsId());
			newsDao.delete(newsinfo.getNewsId());
			infoMessage = "ɾ���ɹ�";
			return SUCCESS;
		}
		return ERROR;
	}

	// ��������
	public String update() {
		newsDao.saveOrUpdate(newsinfo);
		infoMessage = "���³ɹ�!";
		return SUCCESS;
	}

	// �������� ��ʱʵ��������������
	public String find() {
		if (searchKey != null && searchKey.trim() != "") {
			Map<String, String> map = new HashMap<>();
			map.put("newsContent", searchKey);
			map.put("newsTitle", searchKey);
			newsInfoList = newsDao.find(map, DAOImpl.FUZZY_MATCH);
		}
		if (newsInfoList == null)
			newsInfoList = new ArrayList<>();
		return SUCCESS;
	}

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}

	public List<Newsinfo> getNewsInfoList() {
		return newsInfoList;
	}

	public void setNewsInfoList(List<Newsinfo> newsInfoList) {
		this.newsInfoList = newsInfoList;
	}

	public Newsinfo getNewsinfo() {
		return newsinfo;
	}

	public void setNewsinfo(Newsinfo newsinfo) {
		this.newsinfo = newsinfo;
	}

	public List<Usermessagenew> getMessageList() {
		return newMessageList;
	}

	public void setMessageList(List<Usermessagenew> messageList) {
		this.newMessageList = messageList;
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
