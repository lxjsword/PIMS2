<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="JavaBean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人信息管理系统</title>
</head>
<body>
<br/><br/><br/>
<s:div align="center">
	<table border="2" cellspacing="0" cellpadding="0" bgcolor="#95BDFF" width="60%" align="center">
          <%
            ArrayList MyMessage=(ArrayList)session.getAttribute("userInfo");
            if(MyMessage==null||MyMessage.size()==0)
            {
                response.sendRedirect("http://localhost:8080/PIMS2/login/login.jsp");
            }
            else
            {
                for(int i=MyMessage.size()-1;i>=0;i--)
                {
                    UserBean mess=(UserBean)MyMessage.get(i);
          %>
                       <tr>
                         <td height="30"><s:text name="用户姓名"></s:text></td>
                         <td><%=mess.getName()%></td>
                       </tr>
                       <tr>
                         <td height="30"><s:text name="用户性别"></s:text></td>
                         <td><%=mess.getSex()%></td>
                       </tr>
                       <tr>
                         <td height="30"><s:text name="出生日期"></s:text></td>
                         <td><%=mess.getBirth()%></td>
                       </tr>
                       <tr>
                         <td height="30"><s:text name="用户民族"></s:text></td>
                         <td><%=mess.getNation()%></td>
                       </tr>
                       <tr>
                         <td height="30"><s:text name="用户学历"></s:text></td>
                         <td><%=mess.getEdu()%></td>
                       </tr>
                       <tr>
                         <td height="30"><s:text name="用户职称"></s:text></td>
                         <td><%=mess.getWork()%></td>
                       </tr>
                       <tr>
                         <td height="30"><s:text name="用户电话"></s:text></td>
                         <td><%=mess.getPhone()%></td>
                       </tr>
                       <tr>
                         <td height="30"><s:text name="家庭住址"></s:text></td>
                         <td><%=mess.getPlace()%></td>
                       </tr>
                       <tr>
                           <td height="30"><s:text name="邮箱地址"></s:text></td>
                         <td><%=mess.getEmail()%></td>
                       </tr>
                    <%
                }
            }
          %>
        </table>
</s:div>
</body>
</html>