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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">
<title>赛事列表</title>
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

			<a class="navbar-brand" href="index.html">CBA篮球资讯
				&nbsp&nbsp&nbsp&nbsp<small>Welcome：<s:property
						value="#session.currentUserInstance.getUserName()" /></small>
			</a>
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


		<div class="row">
			<img
				src=" http://i2.itc.cn/20170504/2b1b_b5707fc8_6d21_f4f5_d817_10df9595b563_1.png"
				style="width: 1200px; height: 150px;">
		</div>

		<s:form action="DebugAction" method="delete">
			<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
		</s:form>

		<div class="row">

			<div class="col-md-4">
				<br> <img
					src=" http://logok.org/wp-content/uploads/2015/02/Chinese-Basketball-Association-logo-logotype.png"
					style="width: 180px; height: 150px;"> <img
					src="http://newmail-ng.com/wp-content/uploads/2016/11/CBA-Foundation.jpg"
					style="width: 150px; height: 150px;"> <br>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">曹岩</h5>
					<div class="card-body">
						<div class="row">
							<img
								src=" http://cbadata.sports.sohu.com/images/players/501336.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>位置：</strong>前锋</li>
									<li><strong>号码：</strong>8</li>

									<li><strong>身高：</strong> 196</li>
									<li><strong>体重：</strong> 90</li>
									<li><strong>效力球队：</strong> 八一</li>
									<li><strong>出生日期：</strong> 1991-04-25</li>

								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="card my-4">
					<h5 class="card-header">胡金秋</h5>
					<div class="card-body">
						<div class="row">
							<img
								src=" http://cbadata.sports.sohu.com/images/players/502672.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>位置：</strong>中锋</li>
									<li><strong>号码：</strong>21</li>

									<li><strong>身高：</strong>210</li>
									<li><strong>体重：</strong> 90</li>
									<li><strong>效力球队：</strong>广厦</li>
									<li><strong>出生日期：</strong> 1997-09-24</li>

								</ul>
							</div>
						</div>
					</div>
				</div>


				<div class="card my-4">
					<h5 class="card-header">孙喆</h5>
					<div class="card-body">
						<div class="row">
							<img
								src=" http://cbadata.sports.sohu.com/images/players/500441.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>位置：</strong>中锋</li>
									<li><strong>号码：</strong>17</li>

									<li><strong>身高：</strong>220</li>
									<li><strong>体重：</strong> 90</li>
									<li><strong>效力球队：</strong>福建</li>
									<li><strong>出生日期：</strong>1990-08-14</li>

								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="card my-4">
					<h5 class="card-header">丁彦雨航</h5>
					<div class="card-body">
						<div class="row">
							<img
								src="http://cbadata.sports.sohu.com/images/players/501310.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>位置：</strong>前锋</li>
									<li><strong>号码：</strong>2</li>
									<li><strong>身高：</strong> 200</li>
									<li><strong>体重：</strong> 90</li>
									<li><strong>效力球队：</strong>山东</li>
									<li><strong>出生日期：</strong> 1993-08-20</li>

								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="card my-4">
					<h5 class="card-header">闫鹏飞</h5>
					<div class="card-body">
						<div class="row">
							<img
								src="http://cbadata.sports.sohu.com/images/players/501318.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>位置：</strong>中锋</li>
									<li><strong>号码：</strong>9</li>
									<li><strong>身高：</strong>211</li>
									<li><strong>体重：</strong> 90</li>
									<li><strong>效力球队：</strong>山西</li>
									<li><strong>出生日期：</strong>1993-06-21</li>

								</ul>
							</div>
						</div>
					</div>
				</div>



			</div>

			<div class="col-lg-8">
				<!-- 搜索框 -->
				<s:form action="findGame" method="post" theme="bootstrap">
					<s:textfield label="赛事搜索" cssClass="form-control" name="searchKey"
						value="浙江" />
					<br>
					<s:submit value="搜索" cssClass="btn btn-outline btn-primary btn-sm" />
				</s:form>
				<br>
				<!-- 	<H2>所有赛事</H2> -->
				<div id="page-wrapper">

					<!-- part2.资讯 -->
					<div class="row">

						<div class="col-lg-12">
							</br>
							<div class="panel panel-default">
								<!-- /.panel-heading -->
								<div class="panel-body">
									<div class="row">
										<div class="demo-container" style="padding: 30px">
											<table
												class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
												id="selectpro">
												<thead>
													<tr>
														<th data-field="time">时间</th>
														<th data-field="name"></th>
														<th data-field="image"></th>
														<th data-field="num"></th>
														<th data-field="num"></th>
														<th data-field="image"></th>
														<th data-field="name"></th>
														<th data-field="name">详情</th>
														<th data-field="name">操作</th>
													</tr>
												</thead>
												<tbody>
													<s:iterator value="gameinfoList">
														<tr>
															<td><s:property value="gameTime" /></td>
															<td><s:property
																	value="teaminfoByGameTeam1Id.getTeamName()" /></td>
															<td><img
																src="${teaminfoByGameTeam1Id.getTeamLogo()}"
																class="img-fluid" alt="图片失效"></td>
															<td><s:property value="gameTeam1result" /></td>
															<td><s:property value="gameTeam2result" /></td>
															<td><img
																src="${teaminfoByGameTeam2Id.getTeamLogo()}"
																class="img-fluid" alt="图片失效"></td>
															<td><s:property
																	value="teaminfoByGameTeam2Id.getTeamName()" /></td>
															<td><s:url id="certainGameURL" action="listGameById">
																	<s:param name="gameId" value="%{gameId}" />
																</s:url> <s:a href="%{certainGameURL}">
																	查看详情
																</s:a>
															</td>
															<td><s:form action="addCollection" method="post">
																	<s:hidden name="gameId" value="%{#news.getNewsId()}" />
																	<s:submit value="收藏" method="add"
																		cssClass="btn btn-outline btn-warning btn-sm" />
																</s:form>
															</td>
														</tr>
													</s:iterator>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.col-lg-12-->
					</div>
					<!-- /.row -->
				</div>
			</div>

			<!-- /.row -->
		</div>
		<br> <br> <br> <br>
		<s:debug />

	</div>
	<!-- /.container -->

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