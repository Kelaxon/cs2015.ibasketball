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
	<!--预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + '${infoMessage}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>

	<h3>
		Welcome,用户:
		<s:property value="#session.currentUserInstance.getUserName()" />
	</h3>

	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>


	<!-- part0.导航 -->
	<s:url id="newsURL" action="listNewsAllUser" />
	<s:url id="messagesURL" action="listMessageById" />
	<s:url id="userURL" action="listUserById" />
	<s:url id="logoutUrl" action="logout">
	</s:url>

	<s:a href="%{newsURL}">资讯首页</s:a>
	<s:a href="%{messagesURL}">查看我的帖子</s:a>
	<s:a href="%{userURL}">我的信息</s:a>
	<s:a href="%{logoutUrl}">退出登录</s:a>


	<!-- part2.资讯 -->
	<H2>我的信息</H2>
	<s:push value="userinfo">
		<img src="${userAvatar}" class="img-fluid" alt="图片失效">
		<br> 用户昵称:
	<s:property value="userName" />
		<br> 用户邮箱:
	<s:property value="userEmail" />
		<br> 用户住址:
	<s:property value="userAddr" />
		<br> 电话号码:
	<s:property value="userTel" />
		<br> 真实姓名:
	<s:property value="userTruname" />
		<br> 个性签名:
	<s:property value="userIntro" />
		<br>
	</s:push>
	<!-- 按钮添加模态框 -->
	<button>修改信息</button>

	<!--模态框的内容 -->
	<s:push value="userinfo">
		<s:form action="updateUser" method="post" enctype="multipart/form-data" theme="bootstrap">
			<s:hidden name="userId" />
			<s:textfield label="用户昵称" cssClass="form-control" name="userName"
				readonly="true" />
			<img src="${userAvatar}" class="img-fluid" alt="图片失效">
			<s:file label="用户头像" cssClass="form-control" name="userAvatarFile" />
			<s:password label="用户密码" cssClass="form-control" name="userPassword" />
			<s:password label="再次输入密码" cssClass="form-control"
				name="userPassword1" />
			<s:textarea label="用户住址" cssClass="form-control" name="userAddr" />
			<s:textarea label="用户邮箱" cssClass="form-control" name="userEmail" />
			<s:textarea label="电话号码" cssClass="form-control" name="userTel" />
			<s:textarea label="真实姓名" cssClass="form-control" name="userTruname" />
			<s:textarea label="个性签名" cssClass="form-control" name="userIntro" />
			<s:submit value="修改" cssClass="btn btn-outline btn-primary btn-sm" />
		</s:form>
	</s:push>
	<s:debug />
</body>
</html>