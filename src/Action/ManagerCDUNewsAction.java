package Action;

import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Teacher;
import Hibernate.PO.Topic;

public class ManagerCDUNewsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String topicTitle;
	private String topicType;
	private String topicMajor;
	private String topicContent;
	private String topicRequest;

	public String getTopicTitle() {
		return topicTitle;
	}

	public void setTopicTitle(String topicTitle) {
		this.topicTitle = topicTitle;
	}

	public String getTopicType() {
		return topicType;
	}

	public void setTopicType(String topicType) {
		this.topicType = topicType;
	}

	public String getTopicMajor() {
		return topicMajor;
	}

	public void setTopicMajor(String topicMajor) {
		this.topicMajor = topicMajor;
	}

	public String getTopicContent() {
		return topicContent;
	}

	public void setTopicContent(String topicContent) {
		this.topicContent = topicContent;
	}

	public String getTopicRequest() {
		return topicRequest;
	}

	public void setTopicRequest(String topicRequest) {
		this.topicRequest = topicRequest;
	}

	public String execute() throws Exception {

		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {

			Teacher teacher = (Teacher) cdu.sessionScope.get("teacherInstance");
			teacher = (Teacher) cdu.session.get(Teacher.class, teacher.getTeaId());
			
			Topic topic = new Topic();
			topic.setTeacher(teacher);
			topic.setTopicContent(topicContent);
			topic.setTopicMajor(topicMajor);
			topic.setTopicTitle(topicTitle);
			topic.setTopicRequest(topicRequest);
			topic.setTopicType(topicType);
			cdu.session.save(topic);
			cdu.session.flush();
			
			cdu.session.refresh(teacher);
			Set<Topic> topicList = teacher.getTopics();
			cdu.sessionScope.put("topicList", topicList);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}

}
