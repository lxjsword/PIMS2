<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="JavaBean.UserBean" %>
<!DOCTYPE HTML>
<html>
 <head>
  <title>个人信息管理系统</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="../assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
   <link href="../assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="../assets/css/main-min.css" rel="stylesheet" type="text/css" />
 </head>

<body>
	<div class="header">
    
      <div class="dl-title">
          <span class="lp-title-port">个人</span><span class="dl-title-text">信息管理系统</span>
      </div>

    <div class="dl-log">欢迎您，<span class="dl-log-user">
    <%
    HttpSession sessions=request.getSession();
    ArrayList list = (ArrayList)session.getAttribute("userInfo");
    String userName = ((UserBean)list.get(0)).getUserName();
    %>
    <%= userName %>
	</span><a href="http://localhost:8080/PIMS2/login/login.jsp" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
  </div>
   <div class="content">
    <div class="dl-main-nav">
      <div class="dl-inform"><div class="dl-inform-title">贴心小秘书<s class="dl-inform-icon dl-up"></s></div></div>
      <ul id="J_Nav"  class="nav-list ks-clear">
        <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">个人信息</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-order">朋友信息</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-inventory">日程信息</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-supplier">文件信息</div></li>
      </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
   </div>
  <script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="../assets/js/bui.js"></script>
  <script type="text/javascript" src="../assets/js/config.js"></script>

  <script>
    BUI.use('common/main',function(){
      var config = [{
          id:'main', 
          homePage : '../personMessage/lookMessage.jsp',
          menu:[{
              text:'个人信息',
              items:[
                {id:'lookUserInfo',text:'查看个人信息',href:'../personMessage/lookMessage.jsp'},
                {id:'updateUserInfo',text:'修改个人信息',href:'../personMessage/updateMessage.jsp'},
                {id:'updatepassword',text:'修改密码',href:'../personMessage/updatePass.jsp'},
              ]
            }]
          },{
            id:'friends',
            menu:[{
                text:'朋友信息',
                items:[
                  {id:'lookFriendInfo',text:'查看朋友信息',href:'../friendManager/lookFriends.jsp'},
                  {id:'addFriendInfo',text:'添加朋友信息',href:'../friendManager/addFriend.jsp'},
                  {id:'updateFriendInfo',text:'更改朋友信息',href:'../friendManager/updateFriend.jsp'},
                  {id:'deleteFriendInfo',text:'查找朋友',href:'../friendManager/findFriend.jsp'},
                ]
              }]
          },{
            id:'date',
            menu:[{
                text:'日程信息',
                items:[
                  {id:'lookDateInfo',text:'查看日程信息',href:'search/code.html'},
                  {id:'addDateInfo',text:'添加日程信息',href:'search/example.html'},
                  {id:'updateDateInfo',text:'更改日程信息',href:'search/example-dialog.html'},
                  {id:'deleteDateInfo',text:'删除日程信息',href:'search/introduce.html'}, 
                  
                ]
              }]
          },{
            id:'file',
            menu:[{
                text:'个人文件信息',
                items:[
                  {id:'lookFileIfo',text:'查看文件',href:'../fileManager/lookFile.jsp'},
                  {id:'addFileInfo',text:'上传文件',href:'../fileManager/fileUp.jsp'},
                  {id:'findFileInfo',text:'查找文件',href:'../fileManager/findFile.jsp'}
                ]
              }]
          }];
      new PageUtil.MainPage({
        modulesConfig : config
      });
    });
  </script>
</body>
</html>