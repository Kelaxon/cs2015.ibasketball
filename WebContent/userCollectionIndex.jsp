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
	<s:url id="newsURL" action="listNewsAllUser" />
	<s:url id="gamesURL" action="listGameAllUser" />
	<s:url id="scoreURL" action="listScoreAllUser" />
	<s:url id="messagesURL" action="listMessageByUser" />
	<s:url id="collectionURL" action="listCollectionByUser" />
	<s:url id="userURL" action="listUserById" />
	<s:url id="logoutUrl" action="logout" />

	<s:a href="%{newsURL}">资讯首页</s:a>
	<s:a href="%{gamesURL}">所有赛事</s:a>
	<s:a href="%{scoreURL}">积分排行</s:a>
	<s:a href="%{messagesURL}">查看我的帖子</s:a>
	<s:a href="%{collectionURL}">查看我的收藏</s:a>
	<s:a href="%{userURL}">我的信息</s:a>
	<s:a href="%{logoutUrl}">退出登录</s:a>

	<!-- part2.资讯 -->
	<H2>我的新闻收藏</H2>

	<s:iterator value="newsCollectionList" status="st">
		<s:url id="certainNewsURL" action="listNewsById">
			<s:param name="newsId" value="%{newsinfo.getNewsId()}" />
		</s:url>
		<s:a href="%{certainNewsURL}">
			<s:property value="newsinfo.getNewsTitle()" />
		</s:a>
		<br>
		收藏时间:<s:property value="collectionTime" />
		<br>
		<s:form action="deleteCollection" method="post">
			<s:hidden name="ucnId" />
			<s:submit value="删除" method="delete"
				cssClass="btn btn-outline btn-warning btn-sm" />
			<br>
		</s:form>
	</s:iterator>

	<H2>我的赛事收藏</H2>

	<s:iterator value="gameCollectionList" status="st">
		<img src="${gameinfo.teaminfoByGameTeam1Id.getTeamLogo()}" class="img-fluid"
			alt="图片失效">
		<s:property value="gameinfo.gameTeam1result" />
		<img src="${gameinfo.teaminfoByGameTeam2Id.getTeamLogo()}" class="img-fluid"
			alt="图片失效">
		<s:property value="gameinfo.gameTeam2result" />
		<br>
		收藏时间:<s:property value="collectionTime" />
		<br>
		<s:form action="deleteCollection" method="post">
			<s:hidden name="ucgId" />
			<s:submit value="删除" method="delete"
				cssClass="btn btn-outline btn-warning btn-sm" />
			<br>
		</s:form>
	</s:iterator>
	<s:debug />
</body>
</html>