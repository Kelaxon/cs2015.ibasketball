<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>资讯列表</title>
</head>
<body>

	<h3>
		Welcome,用户:
		<s:property value="#session.currentcurrentUserInstance.getUserName()" />
	</h3>


	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>

	<!--预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + '${message}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	<!-- part0.导航 -->
	<a href="userNewsIndex.jsp">资讯首页</a>
	<a href="userMessageIndex.jsp">查看我的帖子</a>
	<a href="userInfoIndex.jsp">我的信息</a>
	<s:url var="logoutUrl" action="AllUsersLoginAction" method="logout">
		<s:param name="username">
			<s:property value="#session.currentcurrentUserInstance.getUserName()" />
		</s:param>
	</s:url>
	<a href="${logoutUrl}">退出登录</a>


	<!-- part2.资讯 -->
	<H2>我的帖子</H2>

	<s:iterator value="#session.userMessageList" var="userMessage"
		status="st">

		<a
			href="userNewsDetail.jsp?newsId=${userMessage.getNewsinfo().getNewsId()}"><s:property
				value="#userMessage.getNewsinfo().getNewsTitle()" /></a>
		<br>
		发帖时间:<s:property value="#userMessage.getMessageTime()" />
		<br>
		帖子内容:<s:property value="#userMessage.getNewsContent()" />
		<br>
		<s:form action="UserCDMessageAction" method="delete">
			<s:hidden name="umnId" value="%{#userMessage.getUmnId()}" />
			<s:submit value="删除" method="delete"
				cssClass="btn btn-outline btn-warning btn-sm" />
			<br>
		</s:form>
	</s:iterator>
	<s:debug />
</body>
</html>