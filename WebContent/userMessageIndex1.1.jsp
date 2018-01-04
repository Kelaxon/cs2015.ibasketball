<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
	
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<!-- Bootstrap core CSS -->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="css/modern-business.css" rel="stylesheet">
<title>资讯列表</title>
</head>

<body>
<script type="text/javascript">
		var message = "" + '${message}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.html">CBA篮球资讯 &nbsp&nbsp&nbsp&nbsp<small>Welcome,用户:<s:property value="#session.userInstance.getUserName()" /></small></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
				
		
		
		
					<li class="nav-item"><a class="nav-link" href="userNewsIndex1.1.jsp">资讯首页</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="userMessageIndex1.1.jsp">查看我的帖子</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="userInfoIndex1.1.jsp">我的信息</a>
					</li>
					<s:url var="logoutUrl" action="AllUsersLoginAction" method="logout">
						<s:param name="username">
							<s:property value="#session.userInstance.getUserName()" />
						</s:param>
					</s:url>
					<li class="nav-item">
					<a class="nav-link"  href="${logoutUrl}">退出登录</a></li>
			</div>
		</div>
	</nav>
	
	<div class="container">
	
	<!--预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + '${message}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	<br>
	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>


	<!-- part2.资讯 -->
	<H2>我的帖子</H2>
<!-- 暂未处理帖子内容 -->
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
	
</div>
<!-- /.container -->
	
<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2017</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>