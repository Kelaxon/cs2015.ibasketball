<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515046711500&di=b315535ddf2f54d0b1578a064fd7dc39&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F7%2F3%2F9%2F2%2F7392377%2F20104%2F4%2F1270348272265.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>First Slide</h3>
              <p>This is a description for the first slide.</p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515046517923&di=aacf48863172d1aac415572608dfa304&imgtype=0&src=http%3A%2F%2Fnews.xiancn.com%2Fimages%2Fattachement%2Fjpg%2Fsite2%2F20160220%2Ff8b156c2006b18324c5157.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Second Slide</h3>
              <p>This is a description for the second slide.</p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515046517922&di=15793a65f6787945c9b6e15b096d2051&imgtype=0&src=http%3A%2F%2Fimg1.cache.netease.com%2Fcatchpic%2F7%2F7F%2F7FB956EE918AB2338BE6ED30E1FE1327.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Third Slide</h3>
              <p>This is a description for the third slide.</p>
            </div>
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
      
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

<title>资讯列表</title>
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
					<li class="nav-item"><a class="nav-link" href="userMessageIndex1.1.jsp">查看我的帖子</a>
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
	<br>
	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>
	
	<!-- 导航栏 -->
	<br>
	<!-- part2.资讯 -->

	<div class="row">
		<!-- Blog Entries Column -->
			<div class="col-md-8">
	
				<s:iterator value="#session.newsInfoList" var="news" status="st">
				<div class="card mb-4">
				
	<%-- 				<img src="${news.getNewsPic()}" style="width:300px;height:300px;"  class="card-img-top" alt="图片失效"> --%>
					<img src="https://unruly.co/wp-content/uploads/2014/11/Lebron-James-Nike-750x300.png">
					<div class="card-body">
						<h2 class="card-title">		
							<a href="userNewsDetail1.1.jsp?newsId=${news.getNewsId()}">
							<s:property value="#news.getNewsTitle()" /></a>
						</h2>
						<s:property value="#news.getNewsTime()" />
						<hr>
						
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<s:property value="#news.getNewsContent()" />
					</div>

				</div>
				</s:iterator>
				
	<s:debug />
		
			</div>
			
			
			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">
			
			
		<!-- Side Widget -->
 				 <img src=" http://logok.org/wp-content/uploads/2015/02/Chinese-Basketball-Association-logo-logotype.png" style="width:180px;height:150px;"> 
			 <img src="http://newmail-ng.com/wp-content/uploads/2016/11/CBA-Foundation.jpg" style="width:150px;height:150px;"> 
	
	

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">青岛队</h5>
            <div class="card-body">
              <div class="row">
              <img src=" https://tse1-mm.cn.bing.net/th?id=OIP.2UWopXR6bcYpbUA-CrM4BgEsDS&pid=Api" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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
              <img src=" https://tse4.mm.bing.net/th?id=OIP.r42hHTcc89QcO9nSGqKrqgAAAA&pid=Api" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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
              <img src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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
              <img src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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
              <img src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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
              <img src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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
              <img src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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
              <img src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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
              <img src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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
              <img src=" http://pic34.photophoto.cn/20150318/0007019985392626_b.jpg" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
                  </ul>
                </div>             
              </div>
            </div>
          </div>
          
           <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">江苏队</h5>
            <div class="card-body">
              <div class="row">
              <img src=" http://i1.hoopchina.com.cn/blogfile/201512/05/BbsImg144928796032695_400*434.jpg" style="width:150px;height:150px;">        
              
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      		<strong>所在城市：</strong>青岛
                    </li>
                    <li>
                      		<strong>现任主教练：</strong>巩晓彬
                    </li>
                    <li>
                    	 <strong>体育馆名称：</strong> 青岛体育中心国信体育馆、海洋大学体育馆
                    </li>
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