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

	<!-- debug:获取数据库内容进行测试按钮 -->
	<s:form action="DebugAction" method="delete">
		<s:submit value="Debug" cssClass="btn btn-outline btn-warning btn-sm" />
	</s:form>

	<h3>
		Welcome,管理员:
		<s:property value="#session.managerInstance.getMagName()" />
	</h3>

	<!--预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + '${infoMessage}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	<!-- part0.导航栏 -->

	<a href="managerNewsIndex.jsp">管理资讯</a>
	<a href="managerMessageIndex.jsp">管理帖子</a>
	<a href="managerUsersIndex.jsp">管理发布/TODO</a>
	<a href="managerUsersIndex.jsp">管理用户</a>
	<s:url var="logoutUrl" action="LoginAction" method="logout">
		<s:param name="username">
			<s:property value="#session.managerInstance.getMagName()" />
		</s:param>
	</s:url>
	<a href="${logoutUrl}">退出登录</a>
	<!-- part2.资讯 -->
	<H2>用户列表</H2>
	<table
		class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
		id="selectpro">
		<thead>
			<tr>
				<th data-field="num">用户编号</th>
				<th data-field="name">用户昵称</th>
				<th data-field="ghgongzi">用户邮箱</th>
				<th data-field="ghgongzics">操作</th>
			</tr>
		</thead>
		<s:iterator value="#session.userInfoList" var="user" status="st">
			<td><s:property value="#user.getUserId()" /></td>
			<td><s:property value="#user.getUserName()" /></td>
			<td><s:property value="#user.getUserEmail()" /></td>
			<td><s:form action="ManagerCDUserAction" method="delete">
					<s:hidden name="userId" value="%{#user.getUserId()}" />
					<s:submit value="删除" method="delete"
						cssClass="btn btn-outline btn-warning btn-sm" />
				</s:form></td>
			<tr>
		</s:iterator>
	</table>

	<!-- 按钮添加模态框 -->
	<button>添加用户</button>

	<!--模态框的内容 -->
	<s:form action="ManagerCDUserAction" method="create" theme="bootstrap">
		<s:textfield label="用户昵称" cssClass="form-control" name="userName" />
		<s:file label="用户头像" cssClass="form-control" name="userAvatar" />
		<s:password label="用户密码" cssClass="form-control" name="userPassword" />
		<s:password label="再次输入密码" cssClass="form-control"
			name="userPassword1" />
		<s:textarea label="用户住址" cssClass="form-control" name="userAddr" />
		<s:textarea label="用户邮箱" cssClass="form-control" name="userEmail" />
		<s:textarea label="电话号码" cssClass="form-control" name="userTel" />
		<s:textarea label="真实姓名" cssClass="form-control" name="userTruname" />
		<s:textarea label="个性签名" cssClass="form-control" name="userIntro" />
		<s:submit value="添加" cssClass="btn btn-outline btn-primary btn-sm" />
	</s:form>
	<s:debug />
</body>
</html>