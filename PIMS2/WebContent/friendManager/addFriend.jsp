<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:text name="个人信息管理系统->增加联系人"></s:text></title>
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
	<br />
	<form action="addFriAction" method="post">
		<table border="2" cellspacing="0" cellpadding="0" bgcolor="95BDFF"
			width="60%" align="center">
			<tr>
				<td><s:textfield name="name" label="好友姓名"></s:textfield> <s:fielderror
						cssStyle="color: red">
						<s:param>name</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td><s:textfield name="phone" label="好友电话"></s:textfield> <s:fielderror
						cssStyle="color: red">
						<s:param>phone</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td><s:textfield name="email" label="邮箱地址"></s:textfield> <s:fielderror
						cssStyle="color: red">
						<s:param>email</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td><s:textfield name="workplace" label="工作单位"></s:textfield> <s:fielderror
						cssStyle="color: red">
						<s:param>workplace</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td><s:textfield name="place" label="家庭住址"></s:textfield> <s:fielderror
						cssStyle="color: red">
						<s:param>place</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td><s:textfield name="QQ" label="QQ"></s:textfield> <s:fielderror
						cssStyle="color: red">
						<s:param>QQ</s:param>
					</s:fielderror></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="确 定"
					size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="reset" value="清 除" size="12"></td>
			</tr>
		</table>
	</form>
</body>
</html>