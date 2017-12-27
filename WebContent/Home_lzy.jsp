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

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

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
			<a class="navbar-brand" href="index.html">Start Bootstrap</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="about.html">About</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="services.html">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
					</li>
					<li class="nav-item"><p data-toggle="modal"
							data-target="#loginModal">
							<a class="nav-link" href="#">Login</a>
							<!-- 模态框（Modal） -->
						<div class="modal fade"  id="loginModal" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<div class="modal-body">
											<button id="mybotton" type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<H1>Hello</H1>
											<s:form class="form" action="AllUsersLoginAction" method="post"
												theme="bootstrap" id="login-nav">
												<div class="form-group">
													<label for="exampleInputEmail2">用户名</label>
													<s:textfield
														cssStyle="font-size:13px;box-shadow:inset 0px 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(102,175,233,.6)"
														cssClass="form-control" id="exampleInputEmail2"
														name="username" value="150903128" />

												</div>
												<div class="form-group">
													<label for="exampleInputPassword2">密码</label>
													<s:password
														cssStyle="font-size:13px;box-shadow:inset 0px 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(102,175,233,.6)"
														sytle="font-size: 13px; " cssClass="form-control"
														id="exampleInputPassword2" name="password" value="123456" />

												</div>
												<div class="form-group">
													<button type="submit" class="btn btn-primary btn-block">登陆</button>
												</div>
												<div class="checkbox">
													<label> <input type="checkbox"> 记住密码
													</label>
												</div>
											</s:form>


										</div>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal -->
						</div>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			Blog Home One <small>Subheading</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">Home</a></li>
			<li class="breadcrumb-item active">Blog Home 1</li>
		</ol>

		<div class="row">

			<!-- Blog Entries Column -->
			<div class="col-md-11">

				<!-- Blog Post -->
				<div class="card mb-4">
					<img class="card-img-top" src="http://placehold.it/750x300"
						alt="Card image cap">
					<div class="card-body">
						<h2 class="card-title">Post Title</h2>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex
							quis soluta, a laboriosam. Dicta expedita corporis animi vero
							voluptate voluptatibus possimus, veniam magni quis!</p>
						<a href="#" class="btn btn-primary">Read More &rarr;</a>
					</div>
					<div class="card-footer text-muted">
						Posted on January 1, 2017 by <a href="#">Start Bootstrap</a>
					</div>
				</div>

				<!-- Blog Post -->
				<div class="card mb-4">
					<img class="card-img-top" src="http://placehold.it/750x300"
						alt="Card image cap">
					<div class="card-body">
						<h2 class="card-title">Post Title</h2>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex
							quis soluta, a laboriosam. Dicta expedita corporis animi vero
							voluptate voluptatibus possimus, veniam magni quis!</p>
						<a href="#" class="btn btn-primary">Read More &rarr;</a>
					</div>
					<div class="card-footer text-muted">
						Posted on January 1, 2017 by <a href="#">Start Bootstrap</a>
					</div>
				</div>

				<!-- Blog Post -->
				<div class="card mb-4">
					<img class="card-img-top" src="http://placehold.it/750x300"
						alt="Card image cap">
					<div class="card-body">
						<h2 class="card-title">Post Title</h2>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex
							quis soluta, a laboriosam. Dicta expedita corporis animi vero
							voluptate voluptatibus possimus, veniam magni quis!</p>
						<a href="#" class="btn btn-primary">Read More &rarr;</a>
					</div>
					<div class="card-footer text-muted">
						Posted on January 1, 2017 by <a href="#">Start Bootstrap</a>
					</div>
				</div>

				<!-- Pagination -->
				<ul class="pagination justify-content-center mb-4">
					<li class="page-item"><a class="page-link" href="#">&larr;
							Older</a></li>
					<li class="page-item disabled"><a class="page-link" href="#">Newer
							&rarr;</a></li>
				</ul>

			</div>

			<!-- Sidebar Widgets Column -->


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
