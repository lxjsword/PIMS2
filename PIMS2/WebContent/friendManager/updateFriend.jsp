<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="JavaBean.FriendBean"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:text name="个人信息管理系统->修改联系人"></s:text></title>
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
	</s:form>
	<s:form action="upFriAction" method="post">
		<table border="2" cellspacing="0" cellpadding="0" bgcolor="95BDFF"
			width="60%" align="center">
			<%
				ArrayList delemess = (ArrayList) session
							.getAttribute("findFriend");
					if (delemess == null || delemess.size() == 0)
					{
			%>
			<s:div align="center"><%="您还没有添加联系人！"%></s:div>
			<%
				} else
					{
						for (int i = delemess.size() - 1; i >= 0; i--)
						{
							FriendBean ff = (FriendBean) delemess.get(i);
			%>
			<tr>
				<td><s:text name="用户姓名"></s:text></td>
				<td><input type="text" name="name" value="<%=ff.getName()%>" />
					<s:fielderror cssStyle="color: red">
						<s:param>name</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td><s:text name="用户电话"></s:text></td>
				<td><input type="text" name="phone" value="<%=ff.getPhone()%>" />
					<s:fielderror cssStyle="color: red">
						<s:param>phone</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td><s:text name="邮箱地址"></s:text></td>
				<td><input type="text" name="email" value="<%=ff.getEmail()%>" />
					<s:fielderror cssStyle="color: red">
						<s:param>email</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td><s:text name="工作单位"></s:text></td>
				<td><input type="text" name="workplace"
					value="<%=ff.getWorkplace()%>" /> <s:fielderror
						cssStyle="color: red">
						<s:param>workplace</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td><s:text name="家庭住址"></s:text></td>
				<td><input type="text" name="place" value="<%=ff.getPlace()%>" />
				<s:fielderror cssStyle="color: red">
				<s:param>place</s:param>
			</s:fielderror>
				</td>
			</tr>
			<tr>
				<td><s:text name="用户QQ"></s:text></td>
				<td><input type="text" name="QQ" value="<%=ff.getQQ()%>" />
				<s:fielderror cssStyle="color: red">
				<s:param>QQ</s:param>
			</s:fielderror></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="确 定"
					size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="reset" value="清 除" size="12"></td>
			</tr>
			<%
				}
					}
			%>
		</table>
	</s:form>
</body>
</html>