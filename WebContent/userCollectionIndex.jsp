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
		var message = "" + '${infoMessage}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	<!-- part0.导航 -->
	<a href="userNewsIndex.jsp">资讯首页</a>
	<a href="userMessageIndex.jsp">查看我的帖子</a>
	<a href="userInfoIndex.jsp">我的信息</a>
	<s:url var="logoutUrl" action="LoginAction" method="logout">
		<s:param name="username">
			<s:property value="#session.currentcurrentUserInstance.getUserName()" />
		</s:param>
	</s:url>
	<a href="${logoutUrl}">退出登录</a>

	<!-- part2.资讯 -->
	<H2>比赛资讯</H2>

	<s:iterator value="#session.collectionList" var="collection"
		status="st">
		<img src="${collection.getNewsPic()}" class="img-fluid" alt="图片失效">
		<br>
		<a href="userNewsDetail.jsp?newsId=${collection.getNewsId()}"><s:property
				value="#collection.getNewsTitle()" /></a>
		<br>
		<s:property value="#collection.getNewsTime()" />
		<br>
		<s:property value="#collection.getNewsContent()" />
		<br>
	</s:iterator>
	<s:debug />
</body>
</html>