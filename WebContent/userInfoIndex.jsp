<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- MetisMenu CSS -->
<link href="css/metisMenu.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/sb-admin-2.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<title>修改信息</title>
<head />
<body>
	<script type="text/javascript">
		var message = "" + '${message}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" style="padding-right:120px" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header" style="padding-left:10px;">
				<a class="navbar-brand"> <b><img alt="" src="images/02.jpg" style="width:26px;height:26px"> 爱篮球-CBA球迷的聚集地</b></a>
				
			</div>
			<!-- /.navbar-header -->
			<ul class="nav navbar-top-links navbar-right">
					<a class="navbar-brand" href="login.jsp">退出登陆</a>
			</ul>

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<div class="panel panel-primary"
							style="border-right: 0px; border-bottom: 0px">
							<div class="panel-heading"></div>
							<!-- /.panel-heading -->
							<div class="panel-body">

								<h3>
									Welcome,
									<s:property value="#session.studentInstance.getStuName()" />
								</h3>
								<h5>
									所属学院：
									<s:property value="#session.studentInstance.getStuDept()" />
								</h5>
								<h5>
									所属专业：
									<s:property value="#session.studentInstance.getStuMajor()" />
								</h5>
							</div>
							<!-- /.panel-body -->
						</div>
							<li aria-hidden="true"><a href="#"><i
								class="fa fa-sitemap fa-fw"></i>毕设选题<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
							<li><a href="studentTopicIndex.jsp">初选题目</a></li>
							<li><a href="studentTopicResultIndex.jsp">我的终选结果</a></li>
						</ul>
						<!-- /.nav-second-level -->
						</li>

						<li aria-hidden="true"><a href="#"><i
								class="fa fa-edit fa-fw"></i>个人信息<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="studentInfoIndex.jsp">查看个人信息</a></li>
								<li><a href="studentInfoManage.jsp">修改个人信息</a></li>
							</ul> <!-- /.nav-second-level --></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					</br>
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>修改个人信息</b>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="row">

								<div class="demo-container"
									style="font-size: 14px; padding: 30px">
									<s:form action="StudentUpdateInfoAction" method="post"
										theme="bootstrap">
										<s:textfield label="姓名" cssClass="form-control" name="stuName"
											value="%{#session.studentInstance.getStuName()}"
											readonly="true" />
										<br />
										<s:password label="密码" cssClass="form-control"
											name="stuPassword"
											value="%{#session.studentInstance.getStuPassword()}" />
										<br />
										<s:password label="确认密码" cssClass="form-control"
											name="stuPassword2"
											value="%{#session.studentInstance.getStuPassword()}" />
										<br />
										<s:textfield label="学院" cssClass="form-control" name="stuDept"
											value="%{#session.studentInstance.getStuDept()}"
											readonly="true" />
										<br />
										<s:textfield label="电话号码" cssClass="form-control"
											name="stuTel" value="%{#session.studentInstance.getStuTel()}" />
										<br />
										<s:textarea label="个性宣言" cssClass="form-control"
											name="stuIntro"
											value="%{#session.studentInstance.getStuIntro()}" />
										<br />
										<s:submit action="StudentUpdateInfoAction" value="修改"
											cssClass="btn btn-info" />


									</s:form>
								</div>

							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12-->

			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Metis Menu Plugin JavaScript -->
	<script src="js/metisMenu.min.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="js/sb-admin-2.js"></script>
</body>
</html>