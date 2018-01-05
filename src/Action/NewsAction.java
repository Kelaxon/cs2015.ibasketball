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

	// 模型层
	NewsinfoDao newsinfoDao = new NewsinfoDaoImpl();

	// 显示元素
	private List<Newsinfo> newsInfoList = new ArrayList<>();
	private Newsinfo newsinfo = new Newsinfo();
	private List<Usermessagenew> messageList = new ArrayList<>(); // 新闻的留言

	private int newsId; // 传入表单
	private String infoMessage; // 通知

	@Override
	public Newsinfo getModel() {
		return newsinfo;
	}

	// 刷新所有的新闻
	public String listAll() {
		newsInfoList = newsinfoDao.listAll();
		return SUCCESS;
	}

	// 刷新特定新闻
	public String listById() {
		newsinfo = newsinfoDao.listById(newsId);
		messageList.clear();
		messageList.addAll(newsinfo.getUsermessagenews());
		Collections.sort(messageList);
		return SUCCESS;
	}

	// 添加新闻
	public String add() {
		newsinfoDao.saveOrUpdate(newsinfo);
		infoMessage = "添加成功!";
		// ActionContext.getContext().getSession().put("message", "添加成功!");
		return SUCCESS;
	}

	// 更新新闻
	public String update() {
		newsinfoDao.saveOrUpdate(newsinfo);
		infoMessage = "更新成功!";
		// ActionContext.getContext().getSession().put("message", "更新成功!");
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
