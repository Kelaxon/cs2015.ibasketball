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
			<a class="navbar-brand" href="index.html">CBA篮球资讯
				&nbsp&nbsp&nbsp&nbsp<small>Welcome,用户:<s:property
						value="#session.userInstance.getUserName()" /></small>
			</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">




					<li class="nav-item"><a class="nav-link"
						href="userNewsIndex1.1.jsp">资讯首页</a></li>
					<li class="nav-item"><a class="nav-link"
						href="userMessageIndex.jsp">查看我的帖子</a></li>
					<li class="nav-item"><a class="nav-link"
						href="userInfoIndex1.1.jsp">我的信息</a></li>
					<s:url var="logoutUrl" action="AllUsersLoginAction" method="logout">
						<s:param name="username">
							<s:property value="#session.userInstance.getUserName()" />
						</s:param>
					</s:url>
					<li class="nav-item"><a class="nav-link" href="${logoutUrl}">退出登录</a></li>
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

		<!-- 导航栏 -->
		<br>
		<!-- part2.资讯 -->

		<div class="row">
			<!-- Blog Entries Column -->
			<div class="col-md-11">

				<s:iterator value="#session.newsInfoList" var="news" status="st">
					<div class="card mb-4">

						<img src="${news.getNewsPic()}"
							style="width: 300px; height: 300px;" class="img-fluid" alt="图片失效">
						<div class="card-body">
							<h2 class="card-title">
								<a href="userNewsDetail1.1.jsp?newsId=${news.getNewsId()}">
									<s:property value="#news.getNewsTitle()" />
								</a>
							</h2>

							<s:property value="#news.getNewsContent()" />
						</div>
						<div class="card-footer text-muted">
							<s:property value="#news.getNewsTime()" />
						</div>
					</div>
				</s:iterator>

				<s:debug />

			</div>
			<!-- Sidebar Widgets Column -->

		</div>
		<!-- /.row -->

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