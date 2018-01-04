<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>用户列表</title>
</head>
<body>

	<h3>
		Welcome,用户:
		<s:property value="#session.currentUserInstance.getUserName()" />
	</h3>

	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>

	<!--预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + '${message}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	<!-- part0.导航栏 -->
	<a href="userNewsIndex.jsp">资讯首页</a>
	<a href="userMessageIndex.jsp">查看我的帖子</a>
	<a href="userInfoIndex.jsp">我的信息</a>
	<s:url var="logoutUrl" action="AllUsersLoginAction" method="logout">
		<s:param name="username">
			<s:property value="#session.currentUserInstance.getUserName()" />
		</s:param>
	</s:url>
	<a href="${logoutUrl}">退出登录</a>


	<!-- part2.资讯 -->
	<H2>我的信息</H2>

	<img src="${currentUserInstance.getUserAvatar()}" class="img-fluid"
		alt="图片失效">
	<br> 用户昵称:
	<s:property value="#session.currentUserInstance.getUserName()" />
	<br> 用户邮箱:
	<s:property value="#session.currentUserInstance.getUserEmail()" />
	<br> 用户住址:
	<s:property value="#session.currentUserInstance.getUserAddr()" />
	<br> 用户邮箱:
	<s:property value="#session.currentUserInstance.getUserEmail()" />
	<br> 电话号码:
	<s:property value="#session.currentUserInstance.getUserTel()" />
	<br> 真实姓名:
	<s:property value="#session.currentUserInstance.getUserTruname()" />
	<br> 个性签名:
	<s:property value="#session.currentUserInstance.getUserIntro()" />
	<br>

	<!-- 按钮添加模态框 -->
	<button>修改信息</button>

	<!--模态框的内容 -->
	<s:form action="UserUInfoAction" method="update" theme="bootstrap">
		<s:textfield label="用户昵称" cssClass="form-control" name="userName"
			value="%{#session.currentUserInstance.getUserName()}" readonly="true" />
		<img src="${currentUserInstance.getUserAvatar()}" class="img-fluid"
			alt="图片失效">
		<s:file label="用户头像" cssClass="form-control" name="userAvatar" />
		<s:password label="用户密码" cssClass="form-control" name="userPassword" />
		<s:password label="再次输入密码" cssClass="form-control"
			name="userPassword1" />
		<s:textarea label="用户住址" cssClass="form-control" name="userAddr"
			value="%{#session.currentUserInstance.getUserAddr()}" />
		<s:textarea label="用户邮箱" cssClass="form-control" name="userEmail"
			value="%{#session.currentUserInstance.getUserEmail()}" />
		<s:textarea label="电话号码" cssClass="form-control" name="userTel"
			value="%{#session.currentUserInstance.getUserTel()}" />
		<s:textarea label="真实姓名" cssClass="form-control" name="userTruname"
			value="%{#session.currentUserInstance.getUserTruname()}" />
		<s:textarea label="个性签名" cssClass="form-control" name="userIntro"
			value="%{#session.currentUserInstance.getUserIntro()}" />
		<s:submit value="修改" cssClass="btn btn-outline btn-primary btn-sm" />
	</s:form>
	<s:debug />
</body>
</html>