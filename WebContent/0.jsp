<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>资讯列表</title>
</head>



<s:form class="form" action="getTestNews" method="post">
	<button type="submit">新闻测试</button>
</s:form>

<s:form class="form" action="UserGetNewsApp" method="post">
	<button type="submit">新闻测试2</button>
</s:form>

<s:form class="form" action="loginApp1" method="post">
	<s:hidden name="UA" value="1" />
	<s:textfield name="userName" value="molinli" />
	<s:textfield name="userPassword" value="123456" />
	<button type="submit">登录测试app</button>
</s:form>

<s:form class="form" action="loginApp2" method="post">

	<s:textfield name="userName" value="molinli" />
	<s:textfield name="userPassword" value="123456" />
	<button type="submit">登录测试</button>
</s:form>

<h5>注册</h5>
<s:form action="register" method="post" theme="bootstrap">
	<s:textfield label="用户昵称" cssClass="form-control" name="userName" />
	<img src="${userAvatar}" class="img-fluid" alt="图片失效">
	<s:file label="用户头像" cssClass="form-control" name="userAvatar" />
	<s:password label="用户密码" cssClass="form-control" name="userPassword" />
	<s:password label="再次输入密码" cssClass="form-control" name="userPassword1" />
	<s:textarea label="用户住址" cssClass="form-control" name="userAddr" />
	<s:textarea label="用户邮箱" cssClass="form-control" name="userEmail" />
	<s:textarea label="电话号码" cssClass="form-control" name="userTel" />
	<s:textarea label="真实姓名" cssClass="form-control" name="userTruname" />
	<s:textarea label="个性签名" cssClass="form-control" name="userIntro" />
	<s:submit value="注册" cssClass="btn btn-outline btn-primary btn-sm" />
</s:form>

<body>
</body>
</html>