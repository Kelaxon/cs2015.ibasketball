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
	<s:action name="FirstEntryLoadDataAction" executeResult="true"
		namespace="/action" />
	<h3>
		Welcome,用户:
		<s:property value="#session.currentUserInstance.getUserName()" />
	</h3>

	<s:form class="form" action="AllUsersLoginAction" method="post">
		<s:textfield name="username" value="lxb" />
		<s:textfield name="password" value="123456" />
		<button type="submit">登录</button>
	</s:form>
	
	
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
	<s:url var="logoutUrl" action="AllUsersLogoutAction">
		<%-- 		<s:param name="username"> --%>
		<%-- 			<s:property value="#session.currentUserInstance.getUserName()" /> --%>
		<%-- 		</s:param> --%>
	</s:url>
	<a href="${logoutUrl}">退出登录</a>
	<s:fielderror />
	<!-- part2.资讯 -->
	<H2>比赛资讯</H2>

	<s:iterator value="#session.newsInfoList" var="news" status="st">
		<img src="${news.getNewsPic()}" class="img-fluid" alt="图片失效">
		<br>
		<a href="userNewsDetail.jsp?newsId=${st.index}"><s:property
				value="#news.getNewsTitle()" /></a>
		<br>
		<s:property value="#news.getNewsTime()" />
		<br>
		<s:property value="#news.getNewsContent()" />
		<br>
	</s:iterator>
	<s:debug />

</body>
</html>