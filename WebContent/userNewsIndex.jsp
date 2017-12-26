<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>选题列表</title>
</head>
<body>
	<!--预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + '${message}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	<!-- part0.侧栏 -->
	
	<a href="userNewsIndex.jsp">资讯首页</a>
	<a href="userMessageIndex.jsp">查看我的留言</a>
			
	<!-- part1.登陆 -->
	<s:form action="AllUsersLoginAction" method="post" theme="bootstrap"
		cssClass="form-inline">

		<s:textfield label="用户名" name="username" value="chris"
			tooltip="Enter your Name here" />
		<s:textfield label="密码" name="password" value="123456" />
		<s:submit value="登录" cssClass="btn" />
		<s:reset value="重置" cssClass="btn" />
	</s:form>
	
	<!-- part2.资讯 -->
	<H2>比赛资讯</H2>
	<table>
		<tr>
			<td>实验课编号</td>
			<td>实验课内容</td>
			<td>实验课课时</td>
		</tr>
		<s:iterator value="#session.labSet" var="attendLab" status="st">
			<tr <s:if test="#st.odd">style="background-color:yellow"</s:if>>
				<td><s:property value="#attendLab.getmLab().getmLabID()" /></td>
				<td><s:property value="#attendLab.getmLab().getmLabName()" /></td>
				<td><s:property value="#attendLab.getmLab().getmLabHours()" /></td>
				<td><a
					href="<s:url action="StudentEnterLabAction">
						<s:param name="mLabID" value="%{#attendLab.getmLab().getmLabID()}" />
					</s:url>">查看与更新</a></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>