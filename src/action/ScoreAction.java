package action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Hibernate.PO.Scoreinfo;
import dao.DAOImpl;

//����������ˢ��valuestack����ֵ
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class ScoreAction extends ActionSupport implements ModelDriven<Scoreinfo> {
	private static final long serialVersionUID = 1L;

	// ģ�Ͳ�
	DAOImpl<Scoreinfo> scoreDao = new DAOImpl<>(Scoreinfo.class);

	// ��ʾԪ��
	private List<Scoreinfo> scoreInfoList = new ArrayList<>();
	private Scoreinfo scoreinfo;

	// �������
	private String UA;

	// �������
	private String infoMessage;

	@Override
	public Scoreinfo getModel() {
		if (scoreinfo == null)
			scoreinfo = new Scoreinfo();
		return scoreinfo;
	}

	// ˢ�����еĻ���
	public String listAll() {
		scoreInfoList = scoreDao.listAll();
		System.out.println(scoreInfoList.size());
		if (UA != null && UA.trim() != "")
			infoMessage = "success";
		return SUCCESS;
	}

	// ˢ���ض�����
	public String listById() {
		scoreinfo = scoreDao.getById(scoreinfo.getScoreId());
		return SUCCESS;
	}

	// ��ӻ���
	public String add() {
		scoreDao.saveOrUpdate(scoreinfo);
		infoMessage = "��ӳɹ�!";
		return SUCCESS;
	}

	// ���»���
	public String update() {
		scoreDao.saveOrUpdate(scoreinfo);
		infoMessage = "���³ɹ�!";
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
