<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Portfolio Registration</title>
</head>
<body>
	<h4>Complete and submit the form to create your own portfolio.</h4>
	<s:form action="Register">
		<s:textfield name="username" label="Username" />
		<s:password name="password" label="Password" />
		<s:textfield name="portfolioName"
			label="Enter a name for your portfolio" />
		<s:submit />
	</s:form>
</body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                 
<tr>
	<td><s:textfield name="userName" label="鐧诲綍鍚�" size="16" /></td>
</tr>
<tr>
	<td><s:password name="password" label="鐧诲綍瀵嗙爜" size="18" /></td>
</tr>
<tr>
	<td colspan="2" align="center"><input type="submit" value="纭畾" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="娓呯┖" /></td>
</tr>
<tr>
	<td colspan="2" align="center"><s:a
			href="http://localhost:8080/PIMS2/login/register.jsp">娉ㄥ唽</s:a></td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>