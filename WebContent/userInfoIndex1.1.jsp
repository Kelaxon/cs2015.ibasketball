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
					<li class="nav-item"><a class="nav-link" href="userMessageIndex.jsp">查看我的帖子</a>
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
							<!-- /.modal -->
						</div>
				</ul>
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
	
	<!-- 导航栏 -->
		<br>
		


	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>


	<!-- part2.资讯 -->
	
	<!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
          <!-- Embedded Google Map -->
          <!-- <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed"></iframe>
  		  -->
  		   <img src="${userInstance.getUserAvatar()}" class="img-fluid" alt="图片失效">
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          <h3>我的信息</h3>
          <br>
          <p>
            	用户昵称:
			<s:property value="#session.userInstance.getUserName()" />
          </p>
          <p>
            	 用户邮箱:
			<s:property value="#session.userInstance.getUserEmail()" />
          </p>
          <p>
            	 用户住址:
			<s:property value="#session.userInstance.getUserAddr()" />
          </p>
          <p>
			             用户邮箱:
				<s:property value="#session.userInstance.getUserEmail()" />
          </p>
           <p>
			         电话号码:
				<s:property value="#session.userInstance.getUserTel()" />
          </p>
          <p>
			         真实姓名:
				<s:property value="#session.userInstance.getUserTruname()" />
          </p>
          <p>
			        我的签名:
				<s:property value="#session.userInstance.getUserIntro()" />
          </p>
        </div>
      </div>
      <!-- /.row -->


	<!-- 按钮添加模态框 -->
	<a class="btn" id="modal-831243" role="button" href="#modal-container-831243" data-toggle="modal">修改信息</a>
	
	<div class="modal fade" id="modal-container-831243" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<div class="modal-content">
					<s:form action="UserUInfoAction" method="update" theme="bootstrap">
					
						<div class="modal-header">
							
							<h4 class="modal-title" id="myModalLabel">
								修改信息
							</h4>
							<button class="close" aria-hidden="true" type="button" data-dismiss="modal">
								×
							</button>
						</div>
						
						
						
						<div class="modal-body">
							<s:textfield label="用户昵称" cssClass="form-control" name="userName"
								value="%{#session.userInstance.getUserName()}" readonly="true" />
							<img src="${userInstance.getUserAvatar()}" class="img-fluid"
								alt="图片失效">
							<hr>
							<s:file label="用户头像" cssClass="form-control" name="userAvatar" />
							<s:password label="用户密码" cssClass="form-control" name="userPassword" />
							<s:password label="再次输入密码" cssClass="form-control"
								name="userPassword1" />
							<s:textarea label="用户住址" cssClass="form-control" name="userAddr"
								value="%{#session.userInstance.getUserAddr()}" />
							<s:textarea label="用户邮箱" cssClass="form-control" name="userEmail"
								value="%{#session.userInstance.getUserEmail()}" />
							<s:textarea label="电话号码" cssClass="form-control" name="userTel"
								value="%{#session.userInstance.getUserTel()}" />
							<s:textarea label="真实姓名" cssClass="form-control" name="userTruname"
								value="%{#session.userInstance.getUserTruname()}" />
							<s:textarea label="个性签名" cssClass="form-control" name="userIntro"
								value="%{#session.userInstance.getUserIntro()}" />
						</div>
					
						
						
						<div class="modal-footer">
							<s:submit value="修改" cssClass="btn btn-outline btn-primary btn-sm" />
						</div>
						
						
					</s:form>
					</div>
					
				</div>
				
			</div>
	
	<br>
	&nbsp&nbsp<s:debug />
	
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