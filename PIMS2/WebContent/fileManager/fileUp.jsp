<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:text name="个人信息管理系统->文件上传"></s:text></title>
</head>
<body>
	<br />
	<br />
	<br />
	<s:div align="center">
		<s:form action="findFileAction" method="get">
			<table border="0" cellspacing="0" cellpadding="0" width="100%"
				align="center">
				<tr>
					<td width="33%"></td>
					<td width="33%"></td>
					<td width="33%"><s:text name="文件标题:"></s:text> <input
						type="text" name="title" /> </td>
					<td><input type="submit" value="下载" />
					</td>
					<s:fielderror cssStyle="color: red">
							<s:param>title</s:param>
						</s:fielderror>
				</tr>
			</table>
		</s:form>
	</s:div>

	<hr noshade />
	<s:form action="addFileAction" method="post"
		enctype="multipart/form-data">
		<table border="2" cellspacing="0" cellpadding="0" bgcolor="#95BDFF"
			width="60%" align="center">
			<tr>
				<td><s:textfield name="title" label="文件标题" size="30"></s:textfield>
					<s:fielderror cssStyle="color: red">
						<s:param>title</s:param>
					</s:fielderror></td>
				</td>
			</tr>
			<tr>
				<td height="30"><s:file name="upload" label="选择文件" size="30"></s:file>
					<s:fielderror cssStyle="color: red">
						<s:param>upload</s:param>
					</s:fielderror></td>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="上 传"
					size="12" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset"
					value="清 空" size="12" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>