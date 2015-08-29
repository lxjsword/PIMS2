<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="JavaBean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:text name="个人信息管理系统->修改密码"></s:text></title>
</head>
<body>
<br/><br/><br/>
<s:form action="updatePassAction" method="post">
      <table border="2" cellspacing="0" cellpadding="0" bgcolor="#95BDFF" width="60%" align="center">
          <%
            ArrayList login=(ArrayList)session.getAttribute("userInfo");
            if(login==null||login.size()==0){
                response.sendRedirect("http://localhost:8080/PIMS2/login/login.jsp");
            }else{
                for(int i=login.size()-1;i>=0;i--){
                    UserBean nm=(UserBean)login.get(i);
                    %>
                       <tr>
                           <td height="30"><s:text name="用户密码"></s:text></td>
                         <td><input type="text" name="password1" value="<%=nm.getPassword()%>"/></td>
                       </tr>
                       <tr>
                         <td height="30"><s:text name="重复密码"></s:text></td>
                         <td><input type="text" name="password2" value="<%=nm.getPassword()%>"/></td>
                         <s:fielderror cssStyle="color: red">
								<s:param>password2</s:param>
						 </s:fielderror>
                       </tr>
                       <tr>
                         <td colspan="2" align="center">
                             <input type="submit" value="确 定" size="12"/>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <input type="reset" value="清 除" size="12"/>
                         </td>
                       </tr>
                    <%
                    }
            }
          %>
        </table>
       </s:form>
</body>
</html>