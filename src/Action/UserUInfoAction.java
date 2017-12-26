package Action;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.CDU.FasadeCDU;
import Hibernate.PO.Student;

public class UserUInfoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String stuPassword;
	private String stuTel;
	private String stuIntro;
	private String stuEmail;

	public String getStuPassword() {
		return stuPassword;
	}

	public void setStuPassword(String stuPassword) {
		this.stuPassword = stuPassword;
	}

	public String getStuTel() {
		return stuTel;
	}

	public void setStuTel(String stuTel) {
		this.stuTel = stuTel;
	}

	public String getStuIntro() {
		return stuIntro;
	}

	public void setStuIntro(String stuIntro) {
		this.stuIntro = stuIntro;
	}

	public String execute() throws Exception {

		FasadeCDU cdu = new FasadeCDU();
		cdu.startConn();

		try {
			Student student = (Student) cdu.sessionScope.get("studentInstance");
			student.setStuIntro(stuIntro);
			student.setStuEmail(stuEmail);

			if (!(stuPassword != null || stuPassword.trim().equals("")))
				student.setStuPassword(stuPassword);
			
			student.setStuTel(stuTel);
			cdu.session.merge(student);
			String message = "ÐÞ¸Ä³É¹¦£¡";
			cdu.context.getContext().put("message", message);
			return SUCCESS;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return ERROR;
	}
}