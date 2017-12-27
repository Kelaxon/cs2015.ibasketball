<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资讯详情</title>
<sb:head />
<body>
	<h3>
		Welcome,用户:
		<s:property value="#session.userInstance.getUserName()" />
	</h3>
	<!-- part0.导航 -->
	<a href="userNewsIndex.jsp">资讯首页</a>
	<a href="userMessageIndex.jsp">查看我的帖子</a>
	<a href="userInfoIndex.jsp">我的信息</a>
	<s:url var="logoutUrl" action="AllUsersLoginAction" method="logout">
		<s:param name="username">
			<s:property value="#session.userInstance.getUserName()" />
		</s:param>
	</s:url>
	<a href="${logoutUrl}">退出登录</a>


	<%
		String id = request.getParameter("newsId");
		int newsid = 1;
		if (id != null)
			newsid = Integer.parseInt(id);
		newsid--;
		List<Newsinfo> newsInfoList = (List<Newsinfo>) session.getAttribute("newsInfoList");
		Newsinfo news = newsInfoList.get(newsid);
	%>
	<h2>
		<%=news.getNewsTitle()%>
	</h2>

	<p>
		发布时间:
		<%=news.getNewsTime()%>
	</p>
	<img src="<%=news.getNewsPic()%>" class="img-fluid" alt="图片失效">
	<p>
		<%=news.getNewsContent()%>
	<p>
	<H5>提交评论</H5>
	<s:form action="UserCMessageAction" method="Create" theme="bootstrap"
		cssClass="form-inline">
		<p>
			<s:hidden name="userId" value="%{#session.userInstance.getUserId()}" />
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