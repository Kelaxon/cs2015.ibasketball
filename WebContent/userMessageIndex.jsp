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
	<!--预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + '${infoMessage}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	<h3>
		Welcome,用户:
		<s:property value="#session.currentUserInstance.getUserName()" />
	</h3>


	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>


	<!-- part0.导航 -->
	<s:url id="newsURL" action="listNewsAllUser" />
	<s:url id="messagesURL" action="listMessageById" />
	<s:url id="userURL" action="listUserById" />
	<s:url id="logoutUrl" action="logout">
	</s:url>
	<s:a href="%{newsURL}">资讯首页</s:a>
	<s:a href="%{messagesURL}">查看我的帖子</s:a>
	<s:a href="%{userURL}">我的信息</s:a>
	<s:a href="%{logoutUrl}">退出登录</s:a>
	<s:fielderror />

	<!-- part2.资讯 -->
	<H2>我的帖子</H2>

	<s:iterator value="messageList" var="message" status="st">

		<a
			href="userNewsDetail.jsp?newsId=${message.getNewsinfo().getNewsId()}"><s:property
				value="#message.getNewsinfo().getNewsTitle()" /></a>
		<br>
		发帖时间:<s:property value="#message.getMessageTime()" />
		<br>
		帖子内容:<s:property value="#message.getMessageContent()" />
		<br>
		<s:form action="deleteMessage" method="delete">
			<s:hidden name="umnId" value="%{#message.getUmnId()}" />
			<s:submit value="删除" method="delete"
				cssClass="btn btn-outline btn-warning btn-sm" />
			<br>
		</s:form>
	</s:iterator>
	<s:debug />
</body>
</html>