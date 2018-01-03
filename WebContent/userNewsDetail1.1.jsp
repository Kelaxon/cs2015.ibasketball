<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<%@ page import="java.util.List"%>
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



	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<br>


		<div class="row">
			<!-- 新闻资讯 -->

			<!-- Post Content Column -->
			<div class="col-lg-12">

				<%
		String id = request.getParameter("newsId");
		int newsid = 1;
		if (id != null)
			newsid = Integer.parseInt(id);
		newsid--;
		List<Newsinfo> newsInfoList = (List<Newsinfo>) session.getAttribute("newsInfoList");
		Newsinfo news = newsInfoList.get(newsid);
	%>
				<h2>
					<%=news.getNewsTitle()%>
				</h2>
				<p>
					发布时间:
					<%=news.getNewsTime()%>
				</p>
				<hr>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <img
					src="<%=news.getNewsPic()%>" class="img-fluid" alt="图片失效"
					style="width: 650px; height: 650px;">
				<hr>
				<p>
					<font size="3"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <%=news.getNewsContent()%>
					</font>
				<p>
				<hr>

				<!-- Comments Form -->
				<div class="card my-4">
					<h5 class="card-header">评论:</h5>
					<div class="card-body">
						<s:form action="UserCMessageAction" method="Create"
							theme="bootstrap" cssClass="form-inline">
							<div class="form-group">
								<s:hidden name="userId"
									value="%{#session.userInstance.getUserId()}" />
								<s:textarea name="messageContent" value="说点什么吧..." cols="80"
									rows="4">
								</s:textarea>
							</div>
							<hr>
							<s:submit value="提交" cssClass="btn" style="color:black" />
						</s:form>
					</div>
				</div>
				<br>

				<!-- Single Comment -->
				<div class="media mb-4">
					<img class="d-flex mr-3 rounded-circle"
						src="http://placehold.it/50x50" alt="">
					<div class="media-body">
						<h5 class="mt-0">Commenter Name</h5>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin. Cras purus odio, vestibulum in
						vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
					</div>
				</div>

				<div class="media mb-4">
					<img class="d-flex mr-3 rounded-circle"
						src="http://placehold.it/50x50" alt="">
					<div class="media-body">
						<h5 class="mt-0">Commenter Name</h5>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin. Cras purus odio, vestibulum in
						vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
					</div>
				</div>


				<br>
				<br> <a href="userNewsIndex1.1.jsp">返回首页</a> <a
					href="javascript:history.back()">返回上页</a>
				<s:debug />

			</div>
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
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>
</html>