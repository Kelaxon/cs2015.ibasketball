<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资讯详情</title>
<sb:head/>
<body>

	<h2>
		资讯：
		<s:property value="#session.clickedTopicSelect.getmTopic().getmTopicName()" />
	</h2>
	<h5>描述：</h5>
	<p>
		<s:property value="#session.clickedTopicSelect.getmTopic().getmTopicContent()" />
	</p>
	<h5>提示：</h5>
	<p>
		<s:property value="#session.clickedTopicSelect.getmTopic().getmTopicCues()" />
	</p>
	<H5>提交答案</H5>
	<s:form action="StudentUploadTopicAnswerAction" method="post" theme="bootstrap" cssClass="form-inline">
		<p>
			<s:textarea label="答案" name="mAnswer"
				value="%{#session.clickedTopicSelect.mAnswer()}" cols="30" rows="4">
			</s:textarea>
		</p>
		<s:submit value="提交"  cssClass="btn"/>
	</s:form>
	<a href="studentIndexLabs.jsp">返回首页</a>
	<a href="javascript:history.back()">返回上页</a>
</body>
</html>