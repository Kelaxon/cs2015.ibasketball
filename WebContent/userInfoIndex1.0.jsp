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

    <title>用户列表</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
<title>用户列表</title>
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
		
			<a class="navbar-brand" href="index.html">CBA篮球资讯 &nbsp&nbsp&nbsp&nbsp<small>Welcome：<s:property value="#session.currentUserInstance.getUserName()" /></small></a>
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
	    <a href="#">Home</a>
	    </li>
	    <li class="breadcrumb-item active">个人信息
	    </li>
	</ol>  

	<div class="row">  
	 <!-- Sidebar Column -->
        <div class="col-lg-3 mb-4">
          <div class="list-group">
            <a href="userInfoIndex1.1.jsp" class="list-group-item">Home</a>
            <a href="#" class="list-group-item active">个人信息</a>
            <a href="#" class="list-group-item">我的收藏</a>
            <a class="list-group-item" href="#">我的帖子</a>
          </div>
        </div>
      
    <s:push value="userinfo">  
    <div class="col-lg-4">
		<img src="${userAvatar}" class="img-fluid rounded mb-4" style="height:196px;" alt="图片失效">
    </div>
    
    <div class="col-lg-2">
         <p>
            	用户昵称:
			<s:property value="userName" />
          </p>
          <p>
            	 用户住址:
			<s:property value="userAddr" />
          </p>
         <p>
			        我的签名:
				<s:property value="userIntro" />
          </p>      
          <hr>
            <a class="btn" id="modal-831243" role="button" href="#modal-container-831243" data-toggle="modal">修改信息</a>
	</div>
	
	<div class="col-lg-2">
          <p>
			          用户邮箱:
				<s:property value="#session.currentUserInstance.getUserEmail()" />
          </p>       
          <p>
			         电话号码:
				<s:property value="userTel" />
          </p>
          <p>
			         真实姓名:
				<s:property value="userTruname" />
          </p>
    </div>
 	</s:push>
 	
 	</div>
 	
 	</div>
    <!-- /.row -->

	<!--模态框的内容 -->
		<div class="modal fade" id="modal-container-831243" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<div class="modal-content">
					<s:push value="userinfo">
					<s:form action="updateUser" method="post" enctype="multipart/form-data" theme="bootstrap">					
						<div class="modal-header">							
							<h4 class="modal-title" id="myModalLabel">
								修改信息
							</h4>
							<button class="close" aria-hidden="true" type="button" data-dismiss="modal">
								×
							</button>
						</div>
						<div class="modal-body">
							<s:hidden name="userId" />
							<s:textfield label="用户昵称" cssClass="form-control" name="userName"
								value="%{#session.currentUserInstance.getUserName()}" readonly="true" />
							<img src="${userAvatar}" class="img-fluid" alt="图片失效">
							<hr>
							<s:file label="用户头像" cssClass="form-control" name="userAvatar" />
							<s:password label="用户密码" cssClass="form-control" name="userPassword" />
							<s:password label="再次输入密码" cssClass="form-control"
								name="userPassword1" />
							<s:textarea label="用户住址" cssClass="form-control" name="userAddr"
								value="%{#session.currentUserInstance.getUserAddr()}" />
							<s:textarea label="用户邮箱" cssClass="form-control" name="userEmail"
								value="%{#session.currentUserInstance.getUserEmail()}" />
							<s:textarea label="电话号码" cssClass="form-control" name="userTel"
								value="%{#session.currentUserInstance.getUserTel()}" />
							<s:textarea label="真实姓名" cssClass="form-control" name="userTruname"
								value="%{#session.currentUserInstance.getUserTruname()}" />
							<s:textarea label="个性签名" cssClass="form-control" name="userIntro"
								value="%{#session.currentUserInstance.getUserIntro()}" />
						</div>
						<div class="modal-footer">
							<s:submit value="修改" cssClass="btn btn-outline btn-primary btn-sm" />
						</div>				
					</s:form>
					</s:push>
					</div>					
				</div>			
	</div>	
			
	<s:debug />

<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy;软件工程课设小组</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	
</body>
</html>