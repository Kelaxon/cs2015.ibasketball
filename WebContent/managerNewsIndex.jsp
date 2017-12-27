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
	<table
		class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
		id="selectpro">
		<thead>
			<tr>
				<th data-field="num">新闻编号</th>
				<th data-field="name">新闻标题</th>
				<th data-field="ghgongzi">创建时间</th>
				<th data-field="ghgongzics">创建者</th>
				<th data-field="ghgongzics">操作</th>
			</tr>
		</thead>
		<s:iterator value="#session.newsInfoList" var="news" status="st">
			<td><s:property value="#news.getNewsTitle()" /> <!--这里要加修改的模态框 -->
			</td>
			<td><s:property value="#news.getNewsTime()" /></td>
			<td><s:property value="#news.getNewsTime()" /></td>
			<td><s:property value="#news.getManagerinfo.getMagName()" /></td>
			<td><s:form action="ManagerCDUNewsAction" method="delete">
					<s:hidden name="newsId" value="%{#news.getNewsId()}" />
					<s:submit value="删除" cssClass="btn btn-outline btn-warning btn-sm" />
				</s:form></td><tr>
		</s:iterator>
	</table>

	<!--模态框的内容 -->
	<s:form action="TeacherUpdateTopicAction" method="post"
		theme="bootstrap">
		<h4>
			<s:textfield label="新闻标题" cssClass="form-control" name="topicTitle"
				value="%{#topic.getTopicTitle()}" />
		</h4>
		<br>
		<s:textfield readonly="true" label="新闻内容" cssClass="form-control"
			value="%{#topic.getTeacher().getTeaName()}" />
		<br>
		<img src="${news.getNewsPic()} }" class="img-fluid"
			alt="Responsive image">

		<s:file tooltip="更改图片" label="Picture" name="picture" />

		<s:hidden name="topicId" value="%{#topic.getTopicId()}" />
		<s:submit value="修改" cssClass="btn btn-outline btn-primary btn-sm" />
	</s:form>
	<s:debug />
</body>
</html>