<%@page import="com.file.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆成功</title>
    
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
  
 <body>
 
 
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
						  <% //User user=(User)request.getAttribute("user"); %>                       
						
							<ul class="nav">
								<li class="active">
									<a href="success.jsp"><%=u.getU_name()%>主页</a>
								</li>
								<li>
									<a href="upuser.jsp"><%=u.getId() %>个人信息修改</a>
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
			<div class="hero-unit">
				<h1>
					欢迎使用！<%=u.getU_name() %>
				</h1>
				<div>
					请选择操作
				</div>
				<div class="btn-group">
					 <button class="btn">已有订单操作</button> <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
					<ul class="dropdown-menu">
						<li>
							 <a href="checkorder.jsp">查看订单状态</a>
						</li>
						<li class="divider">
						</li>
					</ul>
				</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<p>
					 <a class="btn btn-primary btn-large" href="checkcinema.jsp">选择电影 »</a>
				</p>
			</div>
		</div>
	</div>
</div>
</body>
</html>
