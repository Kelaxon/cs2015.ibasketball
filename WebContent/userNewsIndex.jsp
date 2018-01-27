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

	<!-- 预留做提示信息 -->
	<script type="text/javascript">
		var message = "" + "<s:property value='infoMessage'/>";
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>



	Welcome:
	<s:property value="#session.currentUserInstance.getUserName()" />

	<h5>登陆</h5>
	<!-- 登陆表单 -->
	<s:form class="form" action="login" method="post">
		<s:textfield name="userName" value="molinli" />
		<s:textfield name="userPassword" value="123456" />
		<button type="submit">登录</button>
	</s:form>
	
	<!-- 登陆表单 -->
	<s:form class="form" action="login!" method="post">
		<s:textfield name="userName" value="molinli" />
		<s:textfield name="userPassword" value="123456" />
		<button type="submit">登录2</button>
	</s:form>

	<!-- 注册表单 -->
	<h5>注册</h5>
	<s:form action="register" method="post" theme="bootstrap">
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

	<!-- part0.导航 -->
	<s:url id="newsURL" action="listNewsAllUser" />
	<s:url id="gamesURL" action="listGameAllUser" />
	<s:url id="scoreURL" action="listScoreAllUser" />
	<s:url id="messagesURL" action="listMessageByUser" />
	<s:url id="collectionURL" action="listCollectionByUser" />
	<s:url id="userURL" action="listUserById" />
	<s:url id="logoutUrl" action="logout" />

	<s:a href="%{newsURL}">资讯首页</s:a>
	<s:a href="%{gamesURL}">所有赛事</s:a>
	<s:a href="%{scoreURL}">积分排行</s:a>
	<s:a href="%{messagesURL}">查看我的帖子</s:a>
	<s:a href="%{collectionURL}">查看我的收藏</s:a>
	<s:a href="%{userURL}">我的信息</s:a>
	<s:a href="%{logoutUrl}">退出登录</s:a>


	<!-- 搜索框 -->
	<s:form action="findNews" method="post" theme="bootstrap">
		<s:textfield label="新闻标题" cssClass="form-control" name="searchKey"
			value="篮球" />
		<s:submit value="搜索" cssClass="btn btn-outline btn-primary btn-sm" />
	</s:form>

	<!-- part2.资讯 -->
	<H2>新闻资讯</H2>
	
	<s:iterator value="newsInfoList">
		<img src="${newsPic}" class="img-fluid" alt="图片失效">
		<br>

		<!-- 新闻标题 -->
		<s:url id="certainNewsURL" action="listNewsById">
			<s:param name="newsId" value="%{newsId}" />
		</s:url>
		<s:a href="%{certainNewsURL}">
			<s:property value="newsTitle" />
		</s:a>
		<br>

		<!-- 新闻时间 -->
		<s:property value="newsTime" />
		<br>
		<s:property value="newsContent" />
		<br>
	</s:iterator>
	<s:debug />

</body>
</html>