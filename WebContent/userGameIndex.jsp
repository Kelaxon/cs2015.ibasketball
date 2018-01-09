<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>赛事列表</title>
</head>
<body>

	<!-- 预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + "<s:property value='infoMessage'/>";
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>



	Welcome:
	<s:property value="#session.currentUserInstance.getUserName()" />
	<br>

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


	<!-- 搜索框 -->
	<s:form action="findGame" method="post" theme="bootstrap">
		<s:textfield label="赛事标题" cssClass="form-control" name="searchKey"
			value="篮球" />
		<s:submit value="搜索" cssClass="btn btn-outline btn-primary btn-sm" />
	</s:form>

	<!-- part2.资讯 -->
	<H2>所有赛事</H2>

	<s:iterator value="gameinfoList">
		<s:property value="teaminfoByGameTeam1Id.getTeamName()" />
		<img src="${teaminfoByGameTeam1Id.getTeamLogo()}" class="img-fluid"
			alt="图片失效">
		<s:property value="gameTeam1result" />
		<s:property value="teaminfoByGameTeam2Id.getTeamName()" />
		<img src="${teaminfoByGameTeam2Id.getTeamLogo()}" class="img-fluid"
			alt="图片失效">
		<s:property value="gameTeam2result" />
		<br>
		<!-- 赛事时间 -->
		<s:property value="gameTime" />
		<br>
		<!-- 进入赛事详情 -->
		<s:url id="certainGameURL" action="listGameById">
			<s:param name="gameId" value="%{gameId}" />
		</s:url>
		<s:a href="%{certainGameURL}">
			查看详情
		</s:a>
		<br>
	</s:iterator>
	<s:debug />

</body>
</html>