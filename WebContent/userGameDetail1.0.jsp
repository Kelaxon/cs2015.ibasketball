<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Collections"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>资讯详情</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

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

	<!-- part0.导航 -->
	<s:url id="newsURL" action="listNewsAllUser" />
	<s:url id="gamesURL" action="listGameAllUser" />
	<s:url id="scoreURL" action="listScoreAllUser" />
	<s:url id="messagesURL" action="listMessageByUser" />
	<s:url id="collectionURL" action="listCollectionByUser" />
	<s:url id="userURL" action="listUserById" />
	<s:url id="logoutUrl" action="logout" />

	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">

			<a class="navbar-brand" href="index.html">CBA篮球资讯
				&nbsp&nbsp&nbsp&nbsp<small>Welcome：<s:property
						value="#session.currentUserInstance.getUserName()" /></small>
			</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item"><s:a href="%{newsURL}">资讯首页</s:a></li>
					&nbsp;&nbsp;&nbsp;
					<li class="nav-item"><s:a href="%{gamesURL}">所有赛事</s:a></li>
					&nbsp;&nbsp;&nbsp;
					<li class="nav-item"><s:a href="%{scoreURL}">积分排行</s:a></li>
					&nbsp;&nbsp;&nbsp;
					<li class="nav-item"><s:a href="%{userURL}">我的信息</s:a></li>
					</li> &nbsp;&nbsp;&nbsp;
					<li class="nav-item"><s:a href="%{messagesURL}">查看我的帖子</s:a></li>
					&nbsp;&nbsp;&nbsp;
					<li class="nav-item"><s:a href="%{collectionURL}">查看我的收藏</s:a>
					</li> &nbsp;&nbsp;&nbsp;
					<li class="nav-item"><s:a href="%{logoutUrl}">退出登录</s:a></li>

					<s:fielderror />
			</div>
		</div>
	</nav>


	<div class="container">

		<div class="row">
			<img
				src=" http://i2.itc.cn/20170504/2b1b_b5707fc8_6d21_f4f5_d817_10df9595b563_1.png"
				style="width: 1200px; height: 150px;">
		</div>

		<s:push value="gameinfo">

			<div class="row">

				<!-- Post Content Column -->
				<div class="col-lg-8">
					<h2>赛点评论</h2>
					<p>
						<a href="#"><s:property value="gameTime" /></a>
					</p>
					<hr>
					<div>

						<img src="${gameinfo.teaminfoByGameTeam1Id.getTeamLogo()}"
							class="img-fluid" alt="图片失效">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp; <strong><s:property
								value="gameinfo.gameTeam1result" /></strong>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						VS
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<strong><s:property value="gameinfo.gameTeam2result" /></strong>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp; <img
							src="${gameinfo.teaminfoByGameTeam2Id.getTeamLogo()}"
							class="img-fluid" alt="图片失效">
					</div>
					<hr>
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:property value="gameComment" />
					<p></p>
		</s:push>

		<hr>

		<div class="card my-4">
			<s:push value="gameinfo">
				<h5 class="card-header">Leave a Comment:</h5>
				<div class="card-body">
					<s:form action="addMessage" method="post" theme="bootstrap"
						cssClass="form-inline">
						<div class="form-group">
							<s:hidden name="gameId" />
							<s:textarea name="messageContext" value="说点什么吧..." cols="70"
								rows="4">
							</s:textarea>
						</div>
						<hr>
						<s:submit value="提交" cssClass="btn" />
					</s:form>
				</div>
			</s:push>
		</div>

		<!-- Single Comment -->
		<s:iterator value="gameMessageList" status="st">
			<div class="media mb-4">
				<img class="d-flex mr-3 rounded-circle"
					src="${userinfo.getUserAvatar()}" alt="">
				<div class="media-body">
					<h5 class="mt-0">
						<s:property value="userinfo.getUserName()" />
					</h5>
					时间:
					<s:property value="messageTime" />
					<br>
					<s:property value="messageContent" />
				</div>
			</div>
		</s:iterator>



	</div>

	<div class="col-md-4">



		<!-- Categories Widget -->
		<s:push value="gameinfo">
			<s:iterator value="teaminfoByGameTeam1Id.getPlayerinfos()"
				status="st">
				<div class="card my-4">
					<h5 class="card-header">
						<s:property value="playerName" />
					</h5>
					<div class="card-body">
						<div class="row">
							<img src="${playerAvatar}" style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>位置：</strong> <s:property value="playerId" /></li>
									<li><strong>号码：</strong> <s:property
											value="playerPosition" /></li>
									<li><strong>身高：</strong> <s:property value="playerHeight" /></li>
									<li><strong>效力球队：</strong> <s:property
											value="teaminfo.getTeamName()" /></li>
									<li><strong>出生日期：</strong> 1991-04-25</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</s:iterator>
		</s:push>

		<!-- Categories Widget -->
		<s:push value="gameinfo">
			<s:iterator value="teaminfoByGameTeam2Id.getPlayerinfos()"
				status="st">
				<div class="card my-4">
					<h5 class="card-header">
						<s:property value="playerName" />
					</h5>
					<div class="card-body">
						<div class="row">
							<img src="${playerAvatar}" style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>位置：</strong> <s:property value="playerId" /></li>
									<li><strong>号码：</strong> <s:property
											value="playerPosition" /></li>
									<li><strong>身高：</strong> <s:property value="playerHeight" /></li>
									<li><strong>效力球队：</strong> <s:property
											value="teaminfo.getTeamName()" /></li>
									<li><strong>出生日期：</strong> 1991-04-25</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</s:iterator>
		</s:push>

		<%-- 
		<!-- Categories Widget -->
		<div class="card my-4">
			<h5 class="card-header">曹岩</h5>
			<div class="card-body">
				<div class="row">
					<img
						src=" http://cbadata.sports.sohu.com/images/players/501336.jpg"
						style="width: 150px; height: 150px;">

					<div class="col-lg-6">
						<ul class="list-unstyled mb-0">
							<li><strong>位置：</strong>前锋</li>
							<li><strong>号码：</strong>8</li>

							<li><strong>身高：</strong> 196</li>
							<li><strong>体重：</strong> 90</li>
							<li><strong>效力球队：</strong> 八一</li>
							<li><strong>出生日期：</strong> 1991-04-25</li>

						</ul>
					</div>
				</div>
			</div>
		</div> --%>

		<!-- Side Widget -->
		<div class="card my-4">
			<h5 class="card-header">CBA队名变迁</h5>
			<div class="card-body">CBA联赛20余年历史中，先后共有31支球队参加。其中八一队、广东队、辽宁队、北京队、山东队、浙江队、江苏队，七支球队参加了全部20余年的CBA联赛。先后出现七支军警球队，包括八一队、广州军区队、济南军区队、沈阳军区队、空军联航队、南京军区队、前卫体协队</div>
		</div>

	</div>

	</div>

	<br>
	<br>
	<br>
	<br>
	<s:debug />

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy;软件工程课设小组</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>