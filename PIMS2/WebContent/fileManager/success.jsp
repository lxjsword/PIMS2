<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:text name="文件上传成功"></s:text></title>
<META HTTP-EQUIV="Refresh"
	CONTENT="3; URL=http://localhost:8080/PIMS2/fileManager/lookFile.jsp" />
</head>
<body>
	<s:div align="center">
		<h1>文件上传成功！</h1>
		<s:a href="http://localhost:8080/PIMS2/fileManager/lookFile.jsp">
			<h3>3秒后自动跳转......</h3>
		</s:a>
		<hr />
            文件标题:<s:property value="+title" />
		<br />
		<s:property value="uploadFileName" />
		<br />
		<image src="<s:property value="'../save/'+uploadFileName"/>" />
	</s:div>
</body>
</html>