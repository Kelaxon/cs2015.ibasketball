package Action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Managerinfo;
import Hibernate.PO.Userinfo;

public class AllUsersLoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@SuppressWarnings("unchecked")
	public String execute() throws Exception {

		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			
			// 1. 用户
			cdu.createQuery("from Userinfo u where u.userName=? and u.userPassword=?");
			cdu.query.setString(0, username);
			cdu.query.setString(1, password);
			List<Userinfo> users = cdu.query.list();

			if (users.size() == 1) {
				Userinfo user = (Userinfo) users.get(0);
				
//				
//				Topic finalChooseTopic = student.getTopic();
//				cdu.createQuery("from Topic");
//				List<Topic> topicList = cdu.query.list();
//			
//				Set<Firchoose> firchooseList = student.getFirchooses();
//				
//				// 未中资讯
//				List<Firchoose> notFinalChooseList = new ArrayList<>();
//				for (Firchoose firchoose : firchooseList) {
//					if (finalChooseTopic!=null && (firchoose.getTopic().getTopicId() != finalChooseTopic.getTopicId()))
//						notFinalChooseList.add(firchoose);
//				}
//				System.out.println(notFinalChooseList.size());
//				if (finalChooseTopic != null)
//					cdu.sessionScope.put("finalChooseTopic", finalChooseTopic);
//				if (firchooseList != null)
//					cdu.sessionScope.put("firchooseList", firchooseList);
//				cdu.sessionScope.put("topicList", topicList);
//				cdu.sessionScope.put("studentInstance", student);
//				cdu.sessionScope.put("notFinalChooseList", notFinalChooseList);
				
				return "user";
			}

			// 2. 管理员
			cdu.createQuery("from Managerinfo m where m.magId=? and m.magPassword=?");
			cdu.query.setString(0, username);
			cdu.query.setString(1, password);
			List<Managerinfo> managerUsers = cdu.query.list();
			if (managerUsers.size() == 1) {
//				cdu.createQuery("from Student");
//				List<Student> studentList = cdu.query.list();
//				cdu.createQuery("from Teacher");
//				List<Teacher> teacherList = cdu.query.list();
//				cdu.createQuery("from Topic");
//				List<Topic> topicList = cdu.query.list();
//				
//				cdu.createQuery("from Firchoose");
//				List<Firchoose> firstChooseList = cdu.query.list();				
//				List<Topic> finalChooseTopicList = new ArrayList<>();
//				for (Topic topic : topicList) {
//					if (topic.getStudent() != null)
//						finalChooseTopicList.add(topic);
//				}
//
//				cdu.sessionScope.put("studentList", studentList);
//				cdu.sessionScope.put("teacherList", teacherList);
//				cdu.sessionScope.put("topicList", topicList);
//				cdu.sessionScope.put("firstChooseList", firstChooseList);
//				cdu.sessionScope.put("finalChooseTopicList", finalChooseTopicList);
				return "manager";
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

}
