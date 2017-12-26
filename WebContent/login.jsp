<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>欢迎进入北京林业大学选题系统</title>
  <!-- Bootstrap core CSS-->

  <link href="css/login.css" rel="stylesheet">
  <link href="css/bootstrap3.min.css" rel="stylesheet">
  
  <link href="css/full-slider.css" rel="stylesheet">
  <link href="css/login.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
<title>选题列表</title>
</head>
<body>
<!-- Navigation -->
    <nav class="navbar navbar-expand-lg   bg-light fixed-top">
      <div class="container">
          <a class="navbar-brand"><b><img alt="" src="images/02.jpg" style="width:26px;height:26px">&nbsp;&nbsp;爱篮球-CBA球迷的聚集地</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
           <li class="dropdown">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>登陆账户&nbsp;</b> <span class="caret"></span></a>
     	<ul id="login-dp" class="dropdown-menu">
        <li>
           <div class="row">
              <div class="col-md-12">
                 <s:form class="form"  action="UserLoginAction" method="post" theme="bootstrap" id="login-nav">
                    <div class="form-group">
                       <label for="exampleInputEmail2">用户名</label>
                             <s:textfield   cssStyle="font-size:13px;box-shadow:inset 0px 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(102,175,233,.6)"   cssClass="form-control" id="exampleInputEmail2" name="username" value="150903128" />
                      
                    </div>
                    <div class="form-group">
                         <label for="exampleInputPassword2">密码</label>
                              <s:password  cssStyle="font-size:13px;box-shadow:inset 0px 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(102,175,233,.6)"  sytle="font-size: 13px; " cssClass="form-control" id="exampleInputPassword2"   name="password" value="123456" />
                                            
                    </div>
                    <div class="form-group">
                       <button type="submit" class="btn btn-primary btn-block">登陆</button>
                    </div>
                    <div class="checkbox">
                       <label>
                       <input type="checkbox"> 记住密码
                       </label>
                    </div>
                 </s:form>
              </div>
           </div>
        </li>
      	</ul>
      </li>
     
          </ul>
        </div>
      </div>
    </nav>

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-interval="number:1000" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('images/01.jpg')">
         
          
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('images/03.jpg')">
        
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('images/05.jpg')">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>

<p style="font-size:10px"> Copyright &copy; Yang Wenjie Xia Xueyan Liao Xiaobin Zheng Xiaoyu</p>
</body>
</html>