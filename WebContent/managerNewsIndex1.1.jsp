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

	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>

	<!-- part0.导航栏 -->

	<div id="wrapper">

		<!-- Navigation -->
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top"
			style="padding-right: 120px" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header" style="padding-left: 10px;">
				<a class="navbar-brand"> <b><img alt="" src="images/02.jpg"
						style="width: 26px; height: 26px"> 爱篮球-CBA球迷的聚集地</b></a>

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


						<li><a href="managerNewsIndex1.1.jsp"> <i
								class="fa fa-sitemap fa-fw"></i>管理资讯
						</a></li>

						<li><a href="managerUsersIndex1.1.jsp"><i
								class="fa fa-table fa-fw"></i>管理发布/TODO </a></li>

						<li><a href="managerMessageIndex.jsp"><i
								class="fa fa-table fa-fw"></i>管理帖子 </a></li>

						<li><a href="managerUsersIndex1.1.jsp"><i
								class="fa fa-table fa-fw"></i>管理用户 </a></li>

					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
			<ul class="nav navbar-top-links navbar-right">
				<a class="navbar-brand" href="login.jsp">退出登陆</a>
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
						<b>比赛资讯</b>
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
											<th data-field="num">新闻编号</th>
											<th data-field="name">新闻标题</th>
											<th data-field="ghgongzi">创建时间</th>
											<th data-field="ghgongzics">创建者</th>
											<th data-field="ghgongzics">操作</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="#session.newsInfoList" var="news"
											status="st">
											<tr>


												<td>
													<!--这里要加修改的模态框 --> <a class="btn" id="modal-831243"
													role="button" href="#modal-container-831243"
													data-toggle="modal"><s:property
															value="#news.getNewsId()" /></a>
												</td>
												<td><s:property value="#news.getNewsTitle()" /></td>
												<td><s:property value="#news.getNewsTime()" /></td>
												<td><s:property
														value="#news.getManagerinfo.getMagName()" /></td>
												<td><s:form action="ManagerCDUNewsAction"
														method="delete">
														<s:hidden name="newsId" value="%{#news.getNewsId()}" />
														<s:submit value="删除" method="delete"
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

			</div>
			<!-- /.col-lg-12-->

		</div>
		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->

	<div class="modal fade" id="modal-container-831243" role="dialog"
		aria-hidden="true" aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<s:form action="ManagerCDUNewsAction" method="update"
					theme="bootstrap">

					<div class="modal-header">

						<button class="close" aria-hidden="true" type="button"
							data-dismiss="modal">×</button>
						<h4 class="modal-title" id="myModalLabel">修改新闻内容</h4>
					</div>



					<div class="modal-body">
						<h4>
							&nbsp&nbsp&nbsp&nbsp&nbsp
							<s:textfield label="新闻标题" cssClass="form-control"
								name="topicTitle" value="%{#news.getNewsTitle()}" />
						</h4>
						<br>
						<s:textarea label="新闻内容" cssClass="form-control"
							value="%{#news.getNewsContent()}" rows="10" />
						<br> <img src="${news.getNewsPic()} }" class="img-fluid"
							alt="图片失效"> <br> <br>
						<s:file label="更改图片" cssClass="form-control" name="picture" />
					</div>



					<div class="modal-footer">

						<s:hidden name="newsId" value="%{#news.getTopicId()}" />
						<s:submit value="修改" cssClass="btn btn-outline btn-primary btn-sm" />
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