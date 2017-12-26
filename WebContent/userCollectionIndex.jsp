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

<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="js/sb-admin-2.js"></script>
<title>选题列表</title>
</head>
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
					<div id="alert1" style="display: none"
						class="alert alert-success alert-dismissable"
						style="width: 600px;">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">×</button>
						<s:property value="#application.stateHint" />
					</div>
					<div id="alert2" style="display: none"
						class="alert alert-info alert-dismissable" style="width: 600px;">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">×</button>
						<s:property value="#application.stateHint" />
					</div>

					<div id="alert3" style="display: none"
						class="alert alert-danger alert-dismissable" style="width: 600px;">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">×</button>
						<s:property value="#application.stateHint" />
					</div>
					<script type='text/javascript'>
						function show(obj) {
							obj.style.display = 'block';
						}

						if ('${stateValue}' == 1) {
							show(document.getElementById("alert1"));
						} else if ('${stateValue}' == 2) {
							show(document.getElementById("alert2"));
						} else if ('${stateValue}' == 3) {
							show(document.getElementById("alert3"));
						} else{
							show(document.getElementById("alert3"));
						}
					</script>
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>选题</b>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">

							<div class="row">
								<div class="demo-container" style="padding: 15px">
									<table
										class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
										id="selectpro">
										<thead>
											<tr>
												<th data-field="num">编号</th>
												<th data-field="name">选题名称</th>
												<th data-field="ghgongzi">类别</th>
												<th data-field="ghgongzics">导师</th>
												<th data-field="buchangzijin">专业</th>
												<th data-field="buchangzijincs">操作</th>

											</tr>
										</thead>
										<tbody>
											<s:iterator value="#session.topicList" var="topic"
												status="incr">
												<tr>
													<td><s:property value="#topic.getTopicId()" /></td>
													<td>
														<p data-toggle="modal" data-target="#${incr.index+10000}">
															<a herf="#"><s:property
																	value="#topic.getTopicTitle()" /></a>
														</p> <!-- 模态框（Modal） -->
														<div class="modal fade" id="${incr.index+10000}"
															tabindex="-1" role="dialog"
															aria-labelledby="myModalLabel" aria-hidden="true">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-hidden="true">
																			&times;</button>
																		<h4 class="modal-title" id="myModalLabel">选择志愿</h4>
																	</div>
																	<div class="modal-body">
																		<h1>
																			<s:property value="#topic.getTopicTitle()" />
																		</h1>
																		<br>
																		<h5>
																			<s:property value="#topic.getTopicContent()" />
																		</h5>
																		<br>
																		<s:property value="#topic.getTeacher().getTeaName()" />
																		<br>
																		<s:property value="#topic.getTopicType()" />
																		<br>
																	</div>
																</div>
																<!-- /.modal-content -->
															</div>
															<!-- /.modal -->
														</div>
													</td>
													<td><s:property value="#topic.getTopicType()" /></td>
													<td><s:property
															value="#topic.getTeacher().getTeaName()" /></td>
													<td><s:property value="#topic.getTopicMajor()" /></td>
													<td><s:form action="StudentAddFirstChooseAction">
															<s:hidden name="topicId" value="%{#topic.getTopicId()}" />
															<s:submit value="选择此题"
																cssClass="btn btn-outline btn-success btn-sm" />
														</s:form></td>
												</tr>
											</s:iterator>

										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
					<div class="panel panel-info">
						<div class="panel-heading">
							<b>已选题目</b>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="row">
								<div class="demo-container" style="padding: 15px">
									<table
										class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
										id="selectpro">
										<thead>
											<tr>
												<th data-field="num">编号</th>
												<th data-field="name">选题名称</th>
												<th data-field="ghgongzi">类别</th>
												<th data-field="ghgongzics">导师</th>
												<th data-field="buchangzijin">志愿</th>
												<th data-field="buchangzijincs">操作</th>

											</tr>
										</thead>
										<tbody>

											<s:iterator value="#session.firchooseList" var="firchoose"
												status="stat">
												<tr>
													<td><s:property value="#firchoose.getFcId()" /></td>
													<td><s:property
															value="#firchoose.getTopic().getTopicTitle()" /></td>
													<td><s:property
															value="#firchoose.getTopic().getTopicType()" /></td>
													<td><s:property
															value="#firchoose.getTopic().getTeacher().getTeaName()" /></td>

													<td>
														<p data-toggle="modal" data-target="#${stat.index}">
															<a herf="#"><s:property
																	value="#firchoose.getFcWill()" /></a>
														</p> <!-- 模态框（Modal） -->
														<div class="modal fade" id="${stat.index}" tabindex="-1"
															role="dialog" aria-labelledby="myModalLabel"
															aria-hidden="true">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-hidden="true">
																			&times;</button>
																		<h4 class="modal-title" id="myModalLabel">课题简介</h4>
																	</div>
																	<div class="modal-body">
																		<div style="height: 300px; overflow: auto;">
																			<s:form action="StudentUpdateWillFirstChooseAction">
																				<select name="willSelect">
																					<option selected="selected"
																						value="#firchoose.getFcWill()"></option>
																					<option value="1">第一志愿</option>
																					<option value="2">第二志愿</option>
																					<option value="3">第三志愿</option>
																				</select>
																				<s:hidden name="fcId"
																					value="%{#firchoose.getFcId()}" />
																				<s:submit value="增加志愿"
																					cssClass="btn btn-outline btn-warning btn-sm" />
																			</s:form>
																		</div>
																	</div>
																</div>
																<!-- /.modal-content -->
															</div>
															<!-- /.modal -->
														</div>
													</td>
													<td><s:form action="StudentDeleteFirstChooseAction">

															<s:hidden name="fcId" value="%{#firchoose.getFcId()}" />
															<s:submit value="取消选择"
																cssClass="btn btn-outline btn-warning btn-sm" />
														</s:form></td>
												</tr>
											</s:iterator>

										</tbody>
									</table>
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

	
</body>
</html>