<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>选题列表</title>
<sb:head />
<body>
	<a href="managerTopicIndex.jsp">选题管理</a>
	<a href="managerStudentIndex.jsp">学生管理</a>
	<a href="managerTeacherIndex.jsp">教师管理</a> 欢迎您：
	<s:property value="#session.managerInstance.getMagId()" />
	<br>

	<H2>选题列表</H2>
	<table>
		<tr>
			<td>选题编号</td>
			<td>名称</td>
			<td>类型</td>
			<td>专业</td>
		</tr>
		<s:iterator value="#session.topicList" var="topic" status="st">
			<tr <s:if test="#st.odd">style="background-color:yellow"</s:if>>
				<td><s:property value="#topic.getTopicId()" /></td>
				<td><s:property value="#topic.getTopicTitle()" /></td>
				<td><s:property value="#topic.getTopicType()" /></td>
				<td><s:property value="#topic.getTopicMajor()" /></td>
			</tr>
		</s:iterator>
	</table>
	<a href="login.jsp">退出登陆</a>
	<a href="javascript:history.back()">返回上页</a>
	
</body>
</html>