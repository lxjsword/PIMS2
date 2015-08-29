

<%@page import="JavaBean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="个人信息管理系统->修改信息"></s:text></title>
    </head>
    <body>
    <br/><br/><br/>
      <s:form action="updateMessAction" method="post">
      <table border="2" cellspacing="0" cellpadding="0" bgcolor="#95BDFF" width="60%" align="center">
          <%
            ArrayList MyMessage=(ArrayList)session.getAttribute("userInfo");
            if(MyMessage==null||MyMessage.size()==0){
                response.sendRedirect("http://localhost:8080/PIMS2/login/login.jsp");
            }else{
                for(int i=MyMessage.size()-1;i>=0;i--){
                    UserBean mess=(UserBean)MyMessage.get(i);
                    %>
                       <tr>
                            <td height="30"><s:text name="用户姓名"></s:text></td>
                            <td><input type="text" name="name" value="<%=mess.getName()%>"/>
                            <s:fielderror cssStyle="color: red">
								<s:param>name</s:param>
							</s:fielderror></td>
                       </tr>
                       <tr>
                            <td height="30"><s:text name="用户性别"></s:text></td>
                            <td><input type="text" name="sex" value="<%=mess.getSex()%>"/>
                            <s:fielderror cssStyle="color: red">
								<s:param>sex</s:param>
							</s:fielderror></td>
                       </tr>
                       <tr>
                            <td height="30"><s:text name="出生日期"></s:text></td>
                            <td><input type="text" name="birth" value="<%=mess.getBirth()%>"/>
                            <s:fielderror cssStyle="color: red">
								<s:param>birth</s:param>
							</s:fielderror></td>
                       </tr>
                       <tr>
                            <td height="30"><s:text name="用户民族"></s:text></td>
                            <td><input type="text" name="nation" value="<%=mess.getNation()%>"/>
                            <s:fielderror cssStyle="color: red">
								<s:param>nation</s:param>
							</s:fielderror></td>
                       </tr>
                       <tr>
                            <td height="30"><s:text name="用户学历"></s:text></td>
                            <td><input type="text" name="edu" value="<%=mess.getEdu()%>"/>
                            <s:fielderror cssStyle="color: red">
								<s:param>edu</s:param>
							</s:fielderror></td>
                       </tr>
                       <tr>
                            <td height="30"><s:text name="用户职称"></s:text></td>
                            <td><input type="text" name="work" value="<%=mess.getWork()%>"/>
                            <s:fielderror cssStyle="color: red">
								<s:param>work</s:param>
							</s:fielderror></td>
                       </tr>
                       <tr>
                            <td height="30"><s:text name="用户电话"></s:text></td>
                            <td><input type="text" name="phone" value="<%=mess.getPhone()%>"/>
                            <s:fielderror cssStyle="color: red">
								<s:param>phone</s:param>
							</s:fielderror></td>
                       </tr>
                       <tr>
                            <td height="30"><s:text name="家庭住址"></s:text></td>
                            <td><input type="text" name="place" value="<%=mess.getPlace()%>"/>
                            <s:fielderror cssStyle="color: red">
								<s:param>place</s:param>
							</s:fielderror></td>
                       </tr>
                       <tr>
                            <td height="30"><s:text name="邮箱地址"></s:text></td>
                            <td><input type="text" name="email" value="<%=mess.getEmail()%>"/>
                            <s:fielderror cssStyle="color: red">
								<s:param>email</s:param>
							</s:fielderror></td>
                       </tr>
                       <tr>
                            <td colspan="2" align="center">
                             <input type="submit" value="确 定"/>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <input type="reset" value="还 原"/>
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
