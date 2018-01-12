<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<div id="carouselExampleIndicators" class="carousel slide"
	data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#carouselExampleIndicators" data-slide-to="0"
			class="active"></li>
		<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<!-- Slide One - Set the background image for this slide in the line below -->
		<div class="carousel-item active"
			style="background-image: url('http://p22p064rh.bkt.clouddn.com/2.jpg')">
			<div class="carousel-caption d-none d-md-block">
				<h3>欢迎来到CBA篮球资讯</h3>
				<p>这里是CBA篮球资讯，你可以在这里看到CBA的最新资讯</p>
			</div>
		</div>
		<!-- Slide Two - Set the background image for this slide in the line below -->
		<div class="carousel-item"
			style="background-image: url('http://p22p064rh.bkt.clouddn.com/5.jpg')">
			<div class="carousel-caption d-none d-md-block">
				<h3>欢迎来到CBA篮球资讯</h3>
				<p>这里是CBA篮球资讯，除了新闻资讯外，你还可以浏览赛事消息</p>
			</div>
		</div>
		<!-- Slide Three - Set the background image for this slide in the line below -->
		<div class="carousel-item"
			style="background-image: url('http://p22p064rh.bkt.clouddn.com/4.jpg')">
			<div class="carousel-caption d-none d-md-block">
				<h3>欢迎来到CBA篮球资讯</h3>
				<p>这里是CBA篮球资讯，你可以对你感兴趣的赛事或新闻进行留言和收藏</p>
			</div>
		</div>
	</div>
	<a class="carousel-control-prev" href="#carouselExampleIndicators"
		role="button" data-slide="prev"> <span
		class="carousel-control-prev-icon" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
		role="button" data-slide="next"> <span
		class="carousel-control-next-icon" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
</div>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

<link href="css/kongzhihang.css" rel="stylesheet" type="text/css" />

<link href="css/heart.css" rel="stylesheet">

<title>资讯列表</title>
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

	<!--  主体内容-->
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

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<s:form action="login" method="post" theme="bootstrap">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">登陆</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<s:textfield name="userName" value="molinli" />
							<s:textfield name="userPassword" value="123456" />
						</div>
						<div class="modal-footer">
							<s:submit value="登录"
								cssClass="btn btn-outline btn-primary btn-sm" />
						</div>
					</s:form>
				</div>
			</div>
		</div>


		<!-- Modal -->
		<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<s:form action="register" method="post" theme="bootstrap">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">注册</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<s:textfield label="用户昵称" cssClass="form-control" name="userName" />
							<img src="${userAvatar}" class="img-fluid" alt="图片失效">
							<hr>
							<s:file label="用户头像" cssClass="form-control" name="userAvatar" />
							<s:password label="用户密码" cssClass="form-control"
								name="userPassword" />
							<s:password label="再次输入密码" cssClass="form-control"
								name="userPassword1" />
							<s:textarea label="用户住址" cssClass="form-control" name="userAddr"
								value="%{#session.currentUserInstance.getUserAddr()}" />
							<s:textarea label="用户邮箱" cssClass="form-control" name="userEmail"
								value="%{#session.currentUserInstance.getUserEmail()}" />
							<s:textarea label="电话号码" cssClass="form-control" name="userTel"
								value="%{#session.currentUserInstance.getUserTel()}" />
							<s:textarea label="真实姓名" cssClass="form-control"
								name="userTruname"
								value="%{#session.currentUserInstance.getUserTruname()}" />
							<s:textarea label="个性签名" cssClass="form-control" name="userIntro"
								value="%{#session.currentUserInstance.getUserIntro()}" />
						</div>
						<div class="modal-footer">
							<s:submit value="注册"
								cssClass="btn btn-outline btn-primary btn-sm" />
						</div>
					</s:form>
				</div>
			</div>
		</div>

		<!-- part2.资讯 -->
		<div class="row">

			<div class="col-md-8">

				<!-- 搜索框 -->
				<s:form action="findNews" method="post" theme="bootstrap">
					<s:textfield label="新闻标题" cssClass="form-control" name="searchKey"
						value="篮球" />
					<s:submit value="搜索" cssClass="btn btn-outline btn-primary btn-sm" />
				</s:form>

				<s:iterator value="newsInfoList" var="news" status="st">
					<div class="card mb-4">
						<%-- <img src="${newsPic}" class="img-fluid" alt="图片失效"> --%>
						<div class="thumbnail">
							<img  class="portrait" src="${newsPic}" alt="图片失效"> 
						</div>
						<div class="card-body">
							<h2 class="card-title">
								<s:url id="certainNewsURL" action="listNewsById">
									<s:param name="newsId" value="%{newsId}" />
								</s:url>
								<s:a href="%{certainNewsURL}">
									<s:property value="newsTitle" />
								</s:a>
							</h2>
							<s:property value="newsTime" />
							<hr>

							<div class="module js">
								<p id="clampjs">
									<s:property value="newsContent" />
								</p>
							</div>
							<script src="js/clamp.js"></script>
							<script>
					        var header = document.getElementsByTagName('body')[0].getElementsByTagName('h1')[0],
					            paragraph = document.getElementsByTagName('body')[0].getElementsByTagName('div')[0];
					            
					        $clamp(header, {clamp: 1, useNativeClamp: false});
					        $clamp(paragraph, {clamp: 10, useNativeClamp: false, animate: true});
					    </script>

							<s:form action="addCollection" method="add">
								<s:hidden name="newsId" value="%{#news.getNewsId()}" />
								<s:submit value="收藏" method="add"
									cssClass="btn btn-outline btn-warning btn-sm" />
							</s:form>
						</div>
					</div>
				</s:iterator>
				<s:debug />
			</div>


			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">
				<img
					src=" http://logok.org/wp-content/uploads/2015/02/Chinese-Basketball-Association-logo-logotype.png"
					style="width: 180px; height: 150px;"> <img
					src="http://newmail-ng.com/wp-content/uploads/2016/11/CBA-Foundation.jpg"
					style="width: 150px; height: 150px;"> <br>
				<br>
				<hr>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#exampleModal">登陆</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#exampleModal2">注册</button>
				<hr>

				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">青岛队</h5>
					<div class="card-body">
						<div class="row">
							<img
								src=" https://tse1-mm.cn.bing.net/th?id=OIP.2UWopXR6bcYpbUA-CrM4BgEsDS&pid=Api"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>青岛</li>
									<li><strong>现任主教练：</strong>巩晓彬</li>
									<li><strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">广厦队</h5>
					<div class="card-body">
						<div class="row">
							<img
								src=" https://tse4.mm.bing.net/th?id=OIP.r42hHTcc89QcO9nSGqKrqgAAAA&pid=Api"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>杭州</li>
									<li><strong>现任主教练：</strong>李春江</li>
									<li><strong>体育馆名称：</strong> 杭州广厦体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">北京队</h5>
					<div class="card-body">
						<div class="row">
							<img
								src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>北京</li>
									<li><strong>现任主教练：</strong>雅尼斯</li>
									<li><strong>体育馆名称：</strong>五棵松体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">山东队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/Te006.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>济南</li>
									<li><strong>现任主教练：</strong>亚历山大•凯撒</li>
									<li><strong>体育馆名称：</strong> 山东高速大球馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">广东队</h5>
					<div class="card-body">
						<div class="row">
							<img
								src="http://cbadata.sports.sohu.com/images/teams/Te007.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>东莞</li>
									<li><strong>现任主教练：</strong>尤纳斯</li>
									<li><strong>体育馆名称：</strong> 东风日产文体中心</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">北京队</h5>
					<div class="card-body">
						<div class="row">
							<img
								src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>青岛</li>
									<li><strong>现任主教练：</strong>巩晓彬</li>
									<li><strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">辽宁队</h5>
					<div class="card-body">
						<div class="row">
							<img src=" http://cbadata.sports.sohu.com/images/teams/Te011.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>本溪</li>
									<li><strong>现任主教练：</strong>郭士强</li>
									<li><strong>体育馆名称：</strong> 本溪市体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">吉林队</h5>
					<div class="card-body">
						<div class="row">
							<img src=" http://cbadata.sports.sohu.com/images/teams/Te002.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>长春</li>
									<li><strong>现任主教练：</strong>胡安-安东尼奥</li>
									<li><strong>体育馆名称：</strong> 长春市体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">新疆队</h5>
					<div class="card-body">
						<div class="row">
							<img src=" http://cbadata.sports.sohu.com/images/teams/Te008.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>乌鲁木齐</li>
									<li><strong>现任主教练：</strong>李秋平</li>
									<li><strong>体育馆名称：</strong> 红山体育中心体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">福建队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/Te013.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>晋江</li>
									<li><strong>现任主教练：</strong>范斌</li>
									<li><strong>体育馆名称：</strong>晋江市祖昌体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">四川队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/NTe003.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>成都</li>
									<li><strong>现任主教练：</strong>杨学增</li>
									<li><strong>体育馆名称：</strong> 四川省体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">北控队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/NTe014.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>北京</li>
									<li><strong>现任主教练：</strong>丁伟</li>
									<li><strong>体育馆名称：</strong> 国家奥林匹克体育中心体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">八一队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/Te001.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>宁波</li>
									<li><strong>现任主教练：</strong>阿的江</li>
									<li><strong>体育馆名称：</strong> 宁波市北仑区体艺中心</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">上海队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/Te009.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>上海</li>
									<li><strong>现任主教练：</strong>刘鹏</li>
									<li><strong>体育馆名称：</strong> 上海浦东源深体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">广州队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/Te010.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>广州</li>
									<li><strong>现任主教练：</strong>崔万军</li>
									<li><strong>体育馆名称：</strong> 天河体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">天津队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/Te029.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>天津</li>
									<li><strong>现任主教练：</strong>徐贵军</li>
									<li><strong>体育馆名称：</strong> 东丽体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">同曦队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/NTe013.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>南京</li>
									<li><strong>现任主教练：</strong>梁伟</li>
									<li><strong>体育馆名称：</strong>南京青奥公园体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">深圳队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/Te025.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>深圳</li>
									<li><strong>现任主教练：</strong>吴庆龙</li>
									<li><strong>体育馆名称：</strong>深圳龙岗大运中心体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">浙江队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/Te004.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>杭州</li>
									<li><strong>现任主教练：</strong>刘维伟</li>
									<li><strong>体育馆名称：</strong>滨江区体育馆</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">山西队</h5>
					<div class="card-body">
						<div class="row">
							<img src="http://cbadata.sports.sohu.com/images/teams/Te027.jpg"
								style="width: 150px; height: 150px;">

							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><strong>所在城市：</strong>太原</li>
									<li><strong>现任主教练：</strong>杨文海</li>
									<li><strong>体育馆名称：</strong>山西体育中心</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; 软件工程课设小组</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>
</html>