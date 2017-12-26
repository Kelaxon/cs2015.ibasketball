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
<title>管理员</title>
<head />
<body>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" style="padding-right:120px" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header" style="padding-left:10px;">
				<a class="navbar-brand"> <b><img alt="" src="images/02.jpg" style="width:26px;height:26px"> 爱篮球-CBA球迷的聚集地</b></a>
				
			</div>
			<!-- /.navbar-header -->
			
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<div class="panel panel-primary"
							style="border-right: 0px; border-bottom: 0px;">
							<div class="panel-heading"></div>
							<!-- /.panel-heading -->
							<div class="panel-body">

								<h3>Welcome,管理员</h3>

							</div>
							<!-- /.panel-body -->
						</div>
						<li><a href="managerTeacherIndex.jsp"> <i
								class="fa fa-sitemap fa-fw"></i>教师管理
						</a></li>

						<li><a href="managerStudentIndex.jsp"> <i
								class="fa fa-table fa-fw"></i>学生管理
						</a></li>
						<li aria-hidden="true"><a href="#"> <i
								class="fa fa-edit fa-fw"></i>学生选题<span class="fa arrow"></span></a>

							<ul class="nav nav-second-level">
								<li><a href="managerFirstChooseIndex.jsp">初选结果</a></li>
								<li><a href="managerFinalChooseIndex.jsp">选题结果</a></li>
							</ul> <!-- /.nav-second-level --></li>


						<li><a href="managerStateIndex.jsp"><i
								class="fa fa-dashboard fa-fw"></i>选题阶段</a></li>



					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
			<ul class="nav navbar-top-links navbar-right">
					<a class="navbar-brand" href="login.jsp">退出登陆</a>
				</ul>
		</nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					</br>
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>学生选题</b>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="row">
								<div class="demo-container" style="padding: 30px">
									<table
										class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
										id="selectpro">
										<thead>
											<tr>
												<th>选题编号</th>
			                                    <th>选题名称</th>
			                                    <th>学生编号</th>
			                                    <th>学生姓名</th>
		                                     	<th>选题志愿</th>
		                                    	<th>选题时间</th>
	

											</tr>
										</thead>
										<tbody>
											<s:iterator value="#session.firstChooseList" var="firstChoose"
			                              status="incr">
												
													<tr>
													  
															
				                                          <td><s:property value="#firstChoose.getTopic().getTopicId()" /></td>
			                                              <td><s:property value="#firstChoose.getTopic().getTopicTitle()" /></td>
			                                              <td><s:property value="#firstChoose.getStudent().getStuId()" /></td>
				                            			  <td><s:property value="#firstChoose.getStudent().getStuName()" /></td>
														  <td><s:property value="#firstChoose.getFcWill()" /></td>
													      <td><s:property value="#firstChoose.getFcTime()" /></td>
				                                         
				                                        
			
												
													</tr>
											</s:iterator>

										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- /.panel-body -->
					</div>

				</div>
				<!-- /.col-lg-12-->

			</div>
			<!-- /.row -->
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