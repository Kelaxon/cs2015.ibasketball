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
<body>

	<s:form action="register" method="post" theme="bootstrap">
		<s:hidden name="userId" />
		<s:textfield label="用户昵称" cssClass="form-control" name="userName" />
		<img src="${userAvatar}" class="img-fluid" alt="图片失效">
		<s:file label="用户头像" cssClass="form-control" name="userAvatar" />
		<s:password label="用户密码" cssClass="form-control" name="userPassword" />
		<s:password label="再次输入密码" cssClass="form-control"
			name="userPassword1" />
		<s:textarea label="用户住址" cssClass="form-control" name="userAddr" />
		<s:textarea label="用户邮箱" cssClass="form-control" name="userEmail" />
		<s:textarea label="电话号码" cssClass="form-control" name="userTel" />
		<s:textarea label="真实姓名" cssClass="form-control" name="userTruname" />
		<s:textarea label="个性签名" cssClass="form-control" name="userIntro" />
		<s:submit value="注册" cssClass="btn btn-outline btn-primary btn-sm" />
	</s:form>

	<s:form action="upload" namespace="/" method="POST"
		enctype="multipart/form-data">
		<s:textfield label="用户昵称" cssClass="form-control" name="userName" value="杨洋" />
		<img src="${userAvatar}" class="img-fluid" alt="图片失效">
		<s:file name="userAvatar" label="Select a File to upload" size="40" />
		<s:submit value="submit" name="submit" />
	</s:form>


	<form method="post" action="http://upload.qiniu.com/"
		enctype="multipart/form-data">
		<input name="key" type="hidden" value="<resource_key>"> <input
			name="x:<custom_name>" type="hidden" value="<custom_value>">
		<input name="token" type="hidden" value="<upload_token>"> <input
			name="crc32" type="hidden" /> <input name="accept" type="hidden" />
		<input name="file" type="file" />
	</form>

	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>
</body>
</html>