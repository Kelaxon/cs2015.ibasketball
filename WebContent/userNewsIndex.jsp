<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>选题列表</title>
</head>
<body>

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
	<a href="userMessageIndex.jsp">查看我的留言</a>

	<!-- part2.资讯 -->
	<H2>比赛资讯</H2>

	<s:iterator value="#session.newsInfoList" var="news" status="st">
		<img src="${news.getNewsPic()} }" class="img-fluid"
			alt="Responsive image"><tr>
		<s:property value="#news.getNewsTitle()" /><tr>
		<s:property value="#news.getNewsTime()" /><tr>
		<s:property value="#news.getNewsContent()" /><tr>
	</s:iterator>
</body>
</html>