<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   <form action="<%=basePath %>servlet/Servlet1" method="post">
                        <div class="form_row">
                            <label>用户名 (必填)</label><br />
                            <input type="text" name="username" />
                        </div>
                        <div class="form_row">
                            <label>密码(必填)</label><br />
                            <input type="passowrd" name="password" />
                        </div>
                        <div class="form_row">
                            <label>邮箱  (可填)</label>
                        <br />
                            <input type="text" name="mail" id="mail" />
                        </div>
                        <div class="form_row">
                            <label>手机号</label><br />
                            <input type="text" name="tel" id="tel"/>
                        </div>
                       
                        <input type="submit" name="Submit" value="注册" class="submit_btn" />
   </form>
  
  </body>
</html>
