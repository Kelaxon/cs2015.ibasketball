<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Collections"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资讯详情</title>
<sb:head />
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


	<!-- 新闻详情 -->
	<h2>
		<s:property value="newsinfo.getNewsTitle()" />
	</h2>

	<p>
		发布时间:
		<s:property value="newsinfo.getNewsTime()" />

	</p>
	<img src="<s:property value="newsinfo.getNewsPic()"/>"
		class="img-fluid" alt="图片失效">
	<p>
		<s:property value="newsinfo.getNewsContent()" />
	<p>
	<H5>所有评论</H5>
	<s:iterator value="messageList" var="message" status="st">
		用户:<s:property value="#message.getUserinfo().getUserName()" />
		<br>
		留言：<s:property value="#message.getMessageContent()" />
		<br>
		时间:<s:property value="#message.getMessageTime()" />
		<br>
	</s:iterator>


	<H5>提交评论</H5>
	<s:form action="addMessage" method="post" theme="bootstrap"
		cssClass="form-inline">
		<p>
			<s:hidden name="newsId" value="%{newsinfo.getNewsId()}" />
			<s:textarea label="评论" name="messageContent" value="说点什么吧..."
				cols="30" rows="4">
			</s:textarea>
		</p>
		<s:submit value="提交" cssClass="btn" />
	</s:form>

	<s:debug />

</body>
</html>