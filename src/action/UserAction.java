package action;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Hibernate.PO.Userinfo;
import component.QiniuUtil;
import dao.DAOImpl;

//����������ˢ��valuestack����ֵ
@InterceptorRefs({ @InterceptorRef(value = "paramsPrepareParamsStack", params = {
		"modelDriven.refreshModelBeforeResult", "true" }) })
public class UserAction extends ActionSupport implements ModelDriven<Userinfo> {

	private static final long serialVersionUID = 1L;
	private DAOImpl<Userinfo> userDao = new DAOImpl<Userinfo>(Userinfo.class); // ��ʼ��Dao

	// �������
	private List<Userinfo> userList;
	private Userinfo userinfo;
	private String infoMessage;

	// �ϴ�ͷ����
	private File userAvatarFile;
	private String userAvatarFileFileName;
	private String userAvatarFileContentType;
	private HttpServletRequest servletRequest;

	// �������
	private String UA;

	// ����û�
	public String add() {
		userDao.saveOrUpdate(userinfo);
		return SUCCESS;
	}

	// �޸��û���Ϣ
	public String update() throws IOException {
		// �û�û�޸������ʱ�򲻸���
		System.out.println(userinfo.getUserPassword().trim().equals(""));
		if (userinfo.getUserPassword().trim().equals("")) {
			Userinfo currentUser = (Userinfo) ActionContext.getContext()
					.getSession().get("currentUserInstance");
			userinfo.setUserPassword(currentUser.getUserPassword());
		}

		// �ϴ�ͷ��
		if (userAvatarFileFileName == null
				|| userAvatarFileFileName.trim().equals("")) {
			Userinfo currentUser = (Userinfo) ActionContext.getContext()
					.getSession().get("currentUserInstance");
			userinfo.setUserAvatar(currentUser.getUserAvatar());
		}
		System.out.println("file"+userAvatarFileFileName);
		if (userAvatarFileFileName != null
				&& userAvatarFileFileName.trim() != "") {
			servletRequest = ServletActionContext.getRequest();
			String filePath = servletRequest.getSession().getServletContext()
					.getRealPath("/");
			File tempfile = new File(filePath, this.userAvatarFileFileName);
			FileUtils.copyFile(this.userAvatarFile, tempfile);
			try {

				// ƴ���ļ���
				String[] suffix = userAvatarFileFileName.split("\\."); // Ҫת�壡
				
				Timestamp d = new Timestamp(System.currentTimeMillis());
				userAvatarFileFileName = d + "." + suffix[suffix.length - 1];
				new QiniuUtil().uploadToQiNiuYun(userAvatarFileFileName,
						userAvatarFile);
				String userAvatarFileUrl = QiniuUtil.DOMAIN
						+ userAvatarFileFileName;
				userinfo.setUserAvatar(userAvatarFileUrl);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		userDao.saveOrUpdate(userinfo);

		// ��׿��
		if (UA != null && UA.trim() != "") {
			infoMessage = "�޸ĳɹ�";
		}
		return SUCCESS;
	}

	// ɾ���û�
	public String Delete() {
		userDao.delete(userinfo.getUserId());
		return SUCCESS;
	}

	// ˢ�µ����û�
	public String listById() {
		Userinfo currentUser = (Userinfo) ActionContext.getContext()
				.getSession().get("currentUserInstance");
		if (currentUser == null) {
			ActionContext.getContext().getSession().put("message", "���ȵ�¼!");
			return ERROR;
		}
		userinfo = userDao.getById(currentUser.getUserId());
		return SUCCESS;
	}

	public String listAll() {
		userList = userDao.listAll();
		return SUCCESS;
	}

	public String getUA() {
		return UA;
	}

	public void setUA(String uA) {
		UA = uA;
	}

	public List<Userinfo> getUserList() {
		return userList;
	}

	public void setUserList(List<Userinfo> userList) {
		this.userList = userList;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public File getuserAvatarFile() {
		return userAvatarFile;
	}

	public void setuserAvatarFile(File userAvatarFile) {
		this.userAvatarFile = userAvatarFile;
	}

	public String getuserAvatarFileFileName() {
		return userAvatarFileFileName;
	}

	public void setuserAvatarFileFileName(String userAvatarFileFileName) {
		this.userAvatarFileFileName = userAvatarFileFileName;
	}

	public String getuserAvatarFileContentType() {
		return userAvatarFileContentType;
	}

	public void setuserAvatarFileContentType(String userAvatarFileContentType) {
		this.userAvatarFileContentType = userAvatarFileContentType;
	}

	public String getInfoMessage() {
		return infoMessage;
	}

	public void setInfoMessage(String infoMessage) {
		this.infoMessage = infoMessage;
	}

	@Override
	public Userinfo getModel() {
		if (userinfo == null)
			userinfo = new Userinfo();
		return userinfo;
	}

}
