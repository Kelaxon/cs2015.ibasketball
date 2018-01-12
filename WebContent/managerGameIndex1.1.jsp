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
	<title>资讯列表</title>
	</head>
<body>

	<!-- part0.导航栏 -->

	<div id="wrapper">

		<!-- Navigation -->
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

								<h3>
									Welcome,管理员:
									<s:property value="#session.managerInstance.getMagName()" />
								</h3>

							</div>
							<!-- /.panel-body -->
						</div>
						
						
						<s:url id="newsURL" action="listNewsAllManager" />
						<s:url id="gamesURL" action="listGameAllManager" />
						<s:url id="messagesURL" action="listMessageAllManager" />
						<s:url id="userURL" action="listUserAllManager" />

						<li><s:a href="%{newsURL}"> <i
								class="fa fa-sitemap fa-fw"></i>管理资讯
						</s:a></li>

						<li><s:a href="%{gamesURL}"><i
								class="fa fa-table fa-fw"></i>管理赛事 </s:a></li>

						<li><s:a href="%{messagesURL}"><i
								class="fa fa-table fa-fw"></i>管理留言 </s:a></li>

						<li><s:a href="%{userURL}"><i
								class="fa fa-table fa-fw"></i>管理用户 </s:a></li>
						
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
			<s:url id="logoutUrl" action="logout" />
			
			<ul class="nav navbar-top-links navbar-right">
				<s:a href="%{logoutUrl}">退出登录</s:a>
			</ul>
		</nav>

					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
		
			
	<!-- part2.资讯 -->
	
	<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					</br>
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>用户列表</b>
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
												<th data-field="num">赛事时间</th>
												<th data-field="name">球队名称1</th>
												<th data-field="ghgongzi">球队名称2</th>
												<th data-field="ghgongzics">操作</th>
											</tr>
										</thead>
										<tbody>
											<s:iterator value="gameinfoList" var="user" status="st">
												<tr>														 																																												
													<td><s:property value="gameTime" /></td>
													<td><s:property value="teaminfoByGameTeam1Id.getTeamName()" /></td>
													<td><s:property value="teaminfoByGameTeam2Id.getTeamName()" /></td>
													<td><s:form action="deleteGame" method="delete">
															<s:hidden name="userId" value="%{#user.getUserId()}" />
															<s:submit value="删除" method="delete"
																cssClass="btn btn-outline btn-warning btn-sm" />
														</s:form>
													</td>										
												</tr>
											</s:iterator>
										</tbody>
									</table>
									<a class="btn" id="modal-831243" role="button" href="#modal-container-831243" data-toggle="modal">添加赛事</a>
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
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
		
		<div class="modal fade" id="modal-container-831243" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<div class="modal-content">
					<s:form action="addGame" method="add" theme="bootstrap">
					
						<div class="modal-header">
							 
							<button class="close" aria-hidden="true" type="button" data-dismiss="modal">
								×
							</button>
							<h4 class="modal-title" id="myModalLabel">
								添加赛事
							</h4>
						</div>
												
						<div class="modal-body">
							<s:textfield label="赛事时间" cssClass="form-control" name="gameTime" />
							<s:textarea label="球队名称1" cssClass="form-control" name="userAddr" />
							<s:textarea label="球队名称2" cssClass="form-control" name="userEmail" />
						</div>
										
						<div class="modal-footer">
							<s:submit value="添加" cssClass="btn btn-outline btn-primary btn-sm" />
						</div>
												
					</s:form>
					</div>
					
				</div>
				
			</div>
			
	<s:debug />
			
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