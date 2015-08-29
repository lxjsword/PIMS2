<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="JavaBean.FriendBean"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:text name="个人信息管理系统->查找"></s:text></title>
</head>
<body>
	<br />
	<br />
	<br />
	<s:form action="findFriAction" method="get">
		<div align="center">
			<s:text name="修删联系人:"></s:text>
			<input type="text" name="friendName" />
			<s:fielderror cssStyle="color: red">
				<s:param>friendName</s:param>
			</s:fielderror>
			<input type="submit" value="查找" />
		</div>
		<br />
	</s:form>
	<table border="2" cellspacing="0" cellpadding="0" bgcolor="#95BDFF"
		width="70%" align="center">
		<tr>
			<th height="30">用户姓名</th>
			<th height="30">用户电话</th>
			<th height="30">邮箱地址</th>
			<th height="30">用户职称</th>
			<th height="30">家庭住址</th>
			<th height="30">用户QQ</th>
			<th height="30">用户操作</th>
		</tr>
		<%
			ArrayList friends = (ArrayList) session.getAttribute("findFriend");
			if (friends == null || friends.size() == 0)
			{
		%>
		<s:div align="center"><%="您还没有添加联系人！"%></s:div>
		<%
			} else
			{
				for (int i = friends.size() - 1; i >= 0; i--)
				{
					FriendBean ff = (FriendBean) friends.get(i);
		%>
		<tr>
			<td><%=ff.getName()%></td>
			<td><%=ff.getPhone()%></td>
			<td><%=ff.getEmail()%></td>
			<td><%=ff.getWorkplace()%></td>
			<td><%=ff.getPlace()%></td>
			<td><%=ff.getQQ()%></td>
			<td><s:a
					href="http://localhost:8080/PIMS2/friendManager/updateFriend.jsp">修改</s:a>
				<s:a href="deleteFriAction">删除</s:a></td>
		</tr>
		<%
			}
			}
		%>
	</table>
</body>
</html>