<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>个人频道</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
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
		
			<a class="navbar-brand" href="index.html">CBA篮球资讯 &nbsp&nbsp&nbsp&nbsp<small>Welcome<s:property value="#session.currentUserInstance.getUserName()" /></small></a>
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
	
	<div class = "row">	
	<h1 class="mt-4 mb-3">个人频道</h1>	
	</div>
	
	<!-- Intro Content -->        
    <ol class="breadcrumb">
	    <li class="breadcrumb-item">
	    <a href="userInfoIndex1.1.jsp">Home</a>
	    </li>
	    <li class="breadcrumb-item active">我的收藏
	    </li>
	</ol>
	
	<div class="row">  
	
	<!-- Sidebar Column -->
        <div class="col-lg-3 mb-4">
          <div class="list-group">
            <a href="#" class="list-group-item">Home</a>
            <a href="#" class="list-group-item">个人信息</a>
            <a href="#" class="list-group-item active">我的收藏</a>
            <a class="list-group-item" href="#">我的帖子</a>
          </div>
        </div>
        
	<div class="col-lg-8">
	<!-- part2.资讯 -->
	<H2>新闻收藏</H2>

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
	
	<H2>赛事收藏</H2>
	<hr>
	<s:iterator value="gameCollectionList" status="st">
		
	
		<img src="${gameinfo.teaminfoByGameTeam1Id.getTeamLogo()}" class="img-fluid"
			alt="图片失效">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
		<s:property value="gameinfo.gameTeam1result" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		VS
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<s:property value="gameinfo.gameTeam2result" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img src="${gameinfo.teaminfoByGameTeam2Id.getTeamLogo()}" class="img-fluid"
			alt="图片失效">
			
			
		<br>
		收藏时间:<s:property value="collectionTime" />
		<br>
		<br>
		<s:form action="deleteCollection" method="post">
		<s:property value ="ucgId" />
			<s:hidden name="ucgId" />
			<s:submit value="删除" method="delete"
				cssClass="btn btn-outline btn-warning btn-sm" />
		</s:form>
		<hr>
	</s:iterator>
	
	</div>	
 	</div>	
	</div>
    <!-- /.row -->
    	
	<s:debug />
	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; 软件工程课设小组</p>
		</div>
		<!-- /.container -->
	</footer>
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js">		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>