<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="JavaBean.FileBean"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
	<s:div align="center">
		<s:form action="findFileAction" method="get">
			<table border="0" cellspacing="0" cellpadding="0" width="100%"
				align="center">
				<tr>
					<td width="33%"></td>
					<td width="33%"></td>
					<td width="33%"><s:text name="文件标题:"></s:text> <input
						type="text" name="title" /></td> <td><input type="submit" value="下载" />
						</td>
						<s:fielderror cssStyle="color: red">
						<s:param>title</s:param>
					</s:fielderror>
				</tr>
			</table>
		</s:form>
	</s:div>
	
	<hr noshade/>
      <table border="2" cellspacing="0" cellpadding="0" bgcolor="#95BDFF" width="60%" align="center">
          <tr>
              <th height="30">文件标题</th>
              <th height="30">文件名字</th>
              <th height="30">文件类型</th>
              <th height="30">文件大小</th>
              <th height="30">用户操作</th>
          </tr>
          <%
            ArrayList file=(ArrayList)session.getAttribute("findfile");
            if(file==null||file.size()==0){
            %>
            <s:div align="center"><%="您还没有上传文件！"%></s:div>
            <%
            }else{
                for(int i=file.size()-1;i>=0;i--){
                    FileBean ff=(FileBean)file.get(i);
                    %> 
                   <tr>
                     <td><%=ff.getTitle()%></td>
                     <td><%=ff.getName()%></td>
                     <td><%=ff.getContentType()%></td>
                     <td><%=ff.getSize()%></td>
                     <td>
                         <s:a href="downFileAction">下载</s:a>
                         <s:a href="deleteFileAction">删除</s:a>
                     </td>
                   </tr>
                   <tr align="center">
                       <td colspan="5">
                           <img src="../save/<%=ff.getName()%>"/>
                       </td>
                   </tr>
                    <%
                }
            }
          %>
        </table>
</body>
</html>