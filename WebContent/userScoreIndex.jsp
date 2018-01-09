<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>积分列表</title>
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

	<!-- part2.资讯 -->
	<H2>积分排名</H2>
	<table>
		<tr class="even">
			<th>排名</th>
			<th>胜次</th>
			<th>负次</th>
			<th>PPG</th>
			<th>PLP</th>
			<th>STG</th>
			<th>队名</th>
		</tr>
		<s:iterator value="scoreInfoList" var="score" status="st">
			<tr>
				<td><s:property value="scoreRanking()" /></td>
				<td><s:property value="scoreWins" /></td>
				<td><s:property value="scoreLoses" /></td>
				<td><s:property value="scorePpg" /></td>
				<td><s:property value="scorePlp" /></td>
				<td><s:property value="scoreTg" /></td>
				<td><s:property value="teaminfo.getTeamName()" /></td>
			</tr>
		</s:iterator>
	</table>
	<s:debug />
</body>
</html>