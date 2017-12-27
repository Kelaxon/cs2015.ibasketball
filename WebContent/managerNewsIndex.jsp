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
		var message = "" + '${message}';
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
	<s:url var="logoutUrl" action="AllUsersLoginAction" method="logout">
		<s:param name="username">
			<s:property value="#session.managerInstance.getMagName()" />
		</s:param>
	</s:url>
	<a href="${logoutUrl}">退出登录</a>

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
			<td><s:property value="#news.getNewsId()" /> <!--这里要加修改的模态框 -->
			</td>
			<td><s:property value="#news.getNewsTitle()" /></td>
			<td><s:property value="#news.getNewsTime()" /></td>
			<td><s:property value="#news.getManagerinfo.getMagName()" /></td>
			<td><s:form action="ManagerCDUNewsAction" method="delete">
					<s:hidden name="newsId" value="%{#news.getNewsId()}" />
					<s:submit value="删除" method="delete"
						cssClass="btn btn-outline btn-warning btn-sm" />
				</s:form></td>
			<tr>
		</s:iterator>
	</table>

	<!--模态框的内容 -->
	<s:form action="ManagerCDUNewsAction" method="update" theme="bootstrap">
		<h4>
			<s:textfield label="新闻标题" cssClass="form-control" name="topicTitle"
				value="%{#news.getNewsTitle()}" />
		</h4>
		<br>
		<s:textarea readonly="true" label="新闻内容" cssClass="form-control"
			value="%{#news.getNewsContent()}" row="15" />
		<br>
		<img src="${news.getNewsPic()} }" class="img-fluid" alt="图片失效">

		<s:file label="更改图片" name="picture" />

		<s:hidden name="newsId" value="%{#news.getTopicId()}" />
		<s:submit value="修改" cssClass="btn btn-outline btn-primary btn-sm" />
	</s:form>
	<s:debug />
</body>
</html>