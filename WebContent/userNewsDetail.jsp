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
		var message = "" + '${message}';
		if (message != "") {
			alert(message);
			message = "";
		}
	</script>
	
	<h3>
		Welcome,用户:
		<s:property value="#session.currentcurrentUserInstance.getUserName()" />
	</h3>



	<!-- part0.导航 -->
	<a href="userNewsIndex.jsp">资讯首页</a>
	<a href="userMessageIndex.jsp">查看我的帖子</a>
	<a href="userInfoIndex.jsp">我的信息</a>
	<s:url var="logoutUrl" action="AllUsersLoginAction" method="logout">
		<s:param name="username">
			<s:property value="#session.currentcurrentUserInstance.getUserName()" />
		</s:param>
	</s:url>
	<a href="${logoutUrl}">退出登录</a>


	<%
		String id = request.getParameter("newsId");
		int newsid = 1;
		if (id != null)
			newsid = Integer.parseInt(id);
		List<Newsinfo> newsInfoList = (List<Newsinfo>) session.getAttribute("newsInfoList");
		Newsinfo news = newsInfoList.get(newsid);
		
		// request范围
		request.setAttribute("news", news);
		List<Usermessagenew>messages = new ArrayList();
		messages.addAll(news.getUsermessagenews());
		// 留言按时间排序
		Collections.sort(messages);
		request.setAttribute("messages", messages);
	%>
	<h2>
		<s:property value="#request.news.getNewsTitle()" />
	</h2>

	<p>
		发布时间:
		<s:property value="#request.news.getNewsTime()" />

	</p>
	<img src="<s:property value="#request.news.getNewsPic()"/>"
		class="img-fluid" alt="图片失效">
	<p>
		<s:property value="#request.news.getNewsContent()" />
	<p>
	<H5>所有评论</H5>
	<s:iterator value="#request.messages" var="message"
		status="st">
		用户:<s:property value="#message.getUserinfo().getUserName()" />
		<br>
		留言：<s:property value="#message.getMessageContent()" />
		<br>
		时间:<s:property value="#message.getMessageTime()" />
		<br>
	</s:iterator>


	<H5>提交评论</H5>
	<s:form action="UserCreateMessageAction" method="post"
		theme="bootstrap" cssClass="form-inline">
		<p>
			<s:hidden name="newsId" value="%{#request.news.getNewsId()}" />
			<s:textarea label="评论" name="messageContent" value="说点什么吧..."
				cols="30" rows="4">
			</s:textarea>
		</p>
		<s:submit value="提交" cssClass="btn" />
	</s:form>
	<a href="userNewsIndex.jsp">返回首页</a>
	<a href="javascript:history.back()">返回上页</a>
	<s:debug />

</body>
</html>