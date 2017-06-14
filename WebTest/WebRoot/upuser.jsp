<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.file.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-2.0.0.min.js"></script>
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-ui"></script>
	<link href="http://www.francescomalagrino.com/BootstrapPageGenerator/3/css/bootstrap-combined.min.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/bootstrap.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body style="background-color:LightGoldenRodYellow ">
 
 <% 
 User u=(User)session.getAttribute("user");
  System.out.println(session.getAttribute("user"));

  session.setAttribute("user", u);
  %>
<div class="container-fluid" style="background-color:LightGoldenRodYellow ">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						 <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a href="#" class="brand">电影在线下单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li >
									<a href="success.jsp">主页</a>
								</li class="active">
								<li>
									<a href="upuser.jsp">个人信息修改</a>
								</li>
								<li>
									<a href="checkcinema.jsp">影院浏览</a>
								</li>
								<li>
									<a href="checkorder.jsp">查看订单</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<form action="UpdateServelet" method="post">
						<div class="control-group">
						    <label class="control-label" for="inputPassword">用户名(不可更改)</label>
							<div class="controls">
								<input id="username" type="text"  name="username"/>
							</div>
							<div class="control-group">
								 <label class="control-label" for="inputPassword" >密码</label>
								<div class="controls">
									<input id="inputPassword" type="password" name="password"/>
								</div>
							</div>
							 <label class="control-label" for="inputPassword">邮箱</label>
							<div class="controls">
								<input id="mail" type="text"  name="mail"/>
							</div>
							 <label class="control-label" for="inputPassword">手机号</label>
							<div class="controls">
								<input id="tel" type="text"  name="tel"/>
							</div>
							<div class="control-group">
								<div class="controls">
									 <button class="btn" type="submit">修改</button>
								</div>
							</div>
						</div>
				</form>
		</div>
	</div>
</div>
</body>
</html>
