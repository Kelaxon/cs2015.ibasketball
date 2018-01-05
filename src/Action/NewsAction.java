package Action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import DAO.NewsinfoDao;
import DAO.NewsinfoDaoImpl;
import Hibernate.PO.Newsinfo;
import Hibernate.PO.Usermessagenew;

public class NewsAction extends ActionSupport implements ModelDriven<Newsinfo>{
	private static final long serialVersionUID = 1L;

	// ģ�Ͳ�
	NewsinfoDao newsinfoDao = new NewsinfoDaoImpl();

	// ��ʾԪ��
	private List<Newsinfo> newsInfoList = new ArrayList<>();
	private Newsinfo newsinfo = new Newsinfo();
	private List<Usermessagenew> messageList = new ArrayList<>(); // ���ŵ�����

	private int newsId; // �����
	private String infoMessage; // ֪ͨ

	@Override
	public Newsinfo getModel() {
		return newsinfo;
	}

	// ˢ�����е�����
	public String listAll() {
		newsInfoList = newsinfoDao.listAll();
		return SUCCESS;
	}

	// ˢ���ض�����
	public String listById() {
		newsinfo = newsinfoDao.listById(newsId);
		messageList.clear();
		messageList.addAll(newsinfo.getUsermessagenews());
		Collections.sort(messageList);
		return SUCCESS;
	}

	// �������
	public String add() {
		newsinfoDao.saveOrUpdate(newsinfo);
		infoMessage = "��ӳɹ�!";
		// ActionContext.getContext().getSession().put("message", "��ӳɹ�!");
		return SUCCESS;
	}

	// ��������
	public String update() {
		newsinfoDao.saveOrUpdate(newsinfo);
		infoMessage = "���³ɹ�!";
		// ActionContext.getContext().getSession().put("message", "���³ɹ�!");
		return SUCCESS;
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
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
		return messageList;
	}

	public void setMessageList(List<Usermessagenew> messageList) {
		this.messageList = messageList;
	}

	public NewsinfoDao getNewsinfoDao() {
		return newsinfoDao;
	}

	public void setNewsinfoDao(NewsinfoDao newsinfoDao) {
		this.newsinfoDao = newsinfoDao;
	}

	public String getInfoMessage() {
		return infoMessage;
	}

	public void setInfoMessage(String infoMessage) {
		this.infoMessage = infoMessage;
	}

}
