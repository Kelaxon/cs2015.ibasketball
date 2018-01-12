<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Collections"%>
<!DOCTYPE html>
<html lang="en">
<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
		<title>资讯详情</title>
		
	    <!-- Bootstrap core CSS -->
	    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="css/modern-business.css" rel="stylesheet">
		
		<link href="css/heart.css" rel="stylesheet">
</head>
<body>
	<!--预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + '${infoMessage}';
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
		
			<a class="navbar-brand" href="index.html">CBA篮球资讯 &nbsp&nbsp&nbsp&nbsp<small>Welcome<s:property value="#session.currentUserInstance.getUserName()" /></small></a>
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
	
	<br>
	
    <div class="row">
    
	<!-- 新闻详情 -->
	<div class="col-lg-8">
	
	
	
	<s:push value="newsinfo">
	<h2>
		<s:property value="newsTitle" />
	</h2>
		<p class="lead">
			发布时间:
			<a href="#"><s:property value="newsinfo.getNewsTime()" /></a>
		</p>
		<hr>
		<div class="thumbnail">
			<img  class="portrait" src="<s:property value="newsPic"/>" alt="图片失效"> 
		</div>
		<hr>
		<p>
			<font size="3" >
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<s:property value="newsContent" />
			</font>
		</p>
	</s:push>

	<div class="card my-4">
    <h5 class="card-header">评论:</h5>
            <div class="card-body">
            <s:push value="newsinfo">
              <s:form action="addMessage" method="post" theme="bootstrap" cssClass="form-inline">
                <div class="form-group">
                <s:hidden name="newsId" value="%{newsinfo.getNewsId()}"  />
                <s:textarea name="messageContent" value="说点什么吧..." 
				cols="70" rows="4">
				</s:textarea>
                </div>
                <hr>
                <s:submit value="提交" cssClass="btn" style="color:black"/>
              </s:form>
             </s:push>
            </div>
    </div>
    <br>
	<s:iterator value="messageList" var="message" status="st">
          <div class="media mb-4"> 
          <img src="${userinfo.getUserAvatar()}" class="d-flex mr-3 rounded-circle" alt="图片失效">
            <div class="media-body">
              <h5 class="mt-0"><s:property value="userinfo.getUserName()" /></h5>
              	时间:<s:property value="messageTime" />
              	<br>
            <s:property value="messageContent" />
             </div>
          </div>
    </s:iterator>        
    <br><br>
          
	<s:debug />
	
	</div>
	
	 <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">CBA频道</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">篮球咨询</a>
                    </li>
                    <li>
                      <a href="#">赛事信息</a>
                    </li>
                    <li>
                      <a href="#">个人频道</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">CBA</a>
                    </li>
                    <li>
                      <a href="#">收藏</a>
                    </li>
                    <li>
                      <a href="#">留言</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">CBA最新介绍</h5>
            <div class="card-body">
             CBA自每年的10月或11月开始至次年的4月左右结束，截至2016-2017赛季，总共有六支球队夺得过总冠军，八一队和广东队都曾八次夺冠，北京队夺得三冠，上海队、四川队以及新疆队各夺冠一次
            </div>
          </div>
          
<!--           Side Widget
          <div class="card my-4">
            <h5 class="card-header">CBA历史信息</h5>
            <div class="card-body">
            CBA在1995-1996赛季由555香烟取得联赛的冠名权，1996-1997赛季到2000-2001赛季为希尔顿中国男子篮球甲级联赛，之后摩托罗拉和联通新时空分别取得过联赛的冠名权，联赛在2005年正式更名为中国男子篮球职业联赛。CBA球队数量共计20支
            </div>
          </div> -->

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
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> 
    
</body>
</html>