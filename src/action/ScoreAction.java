package action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Hibernate.PO.Scoreinfo;
import dao.DAOImpl;

//配置拦截器刷新valuestack返回值
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class ScoreAction extends ActionSupport implements ModelDriven<Scoreinfo> {
	private static final long serialVersionUID = 1L;

	// 模型层
	DAOImpl<Scoreinfo> scoreDao = new DAOImpl<>(Scoreinfo.class);

	// 显示元素
	private List<Scoreinfo> scoreInfoList = new ArrayList<>();
	private Scoreinfo scoreinfo;

	// 输入参数
	private String UA;

	// 输出参数
	private String infoMessage;

	@Override
	public Scoreinfo getModel() {
		if (scoreinfo == null)
			scoreinfo = new Scoreinfo();
		return scoreinfo;
	}

	// 刷新所有的积分
	public String listAll() {
		scoreInfoList = scoreDao.listAll();
		System.out.println(scoreInfoList.size());
		if (UA != null && UA.trim() != "")
			infoMessage = "success";
		return SUCCESS;
	}

	// 刷新特定积分
	public String listById() {
		scoreinfo = scoreDao.getById(scoreinfo.getScoreId());
		return SUCCESS;
	}

	// 添加积分
	public String add() {
		scoreDao.saveOrUpdate(scoreinfo);
		infoMessage = "添加成功!";
		return SUCCESS;
	}

	// 更新积分
	public String update() {
		scoreDao.saveOrUpdate(scoreinfo);
		infoMessage = "更新成功!";
		return SUCCESS;
	}

	public List<Scoreinfo> getNewsInfoList() {
		return scoreInfoList;
	}

	public void setNewsInfoList(List<Scoreinfo> scoreInfoList) {
		this.scoreInfoList = scoreInfoList;
	}

	public Scoreinfo getScoreinfo() {
		return scoreinfo;
	}

	public void setScoreinfo(Scoreinfo scoreinfo) {
		this.scoreinfo = scoreinfo;
	}

	public List<Scoreinfo> getScoreInfoList() {
		return scoreInfoList;
	}

	public void setScoreInfoList(List<Scoreinfo> scoreInfoList) {
		this.scoreInfoList = scoreInfoList;
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
