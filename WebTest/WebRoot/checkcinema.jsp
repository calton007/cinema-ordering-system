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
    
    <title>浏览电影</title>
    
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
  
  
<div class="container-fluid" style="background-color:Plum ">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						 <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a href="#" class="brand">电影在线下单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li >
									<a href="success.jsp"><%=u.getU_name()%>主页</a>
								</li>
								<li>
									<a href="upuser.jsp"><%=u.getId() %>个人信息修改</a>
								</li>
								<li class="active">
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
			<br>
			<br>
			<br>
			<div class="container-fluid" style="background-color:LightGoldenRodYellow ">
				<div class="row-fluid">
					<div class="span12">
						<div class="btn-group">
							 <button class="btn">选择电影院</button> <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
							<ul class="dropdown-menu">
								<li>
									 <a href="showCinema.jsp?id=1">电影院1</a>
								</li>
								<li>
									 <a href="showCinema.jsp?id=2">电影院2</a>
								</li>
								<li>
									 <a href="showCinema.jsp?id=3">电影院3</a>
								</li>
							</ul>
						</div>
						
						<p>
							根据电影院查找电影
						</p>
						<br>
						<br>
						<br>
						<br>
					<br>
					<br>
						<p>
							请输入想看的电影进行查找
						</p>
						<form action="findfilm" method="post">
							<input name="filmname" type="text" class="textbox" id="filmname" /><button type="submit" class="btn">查找</button>
						</form>
					</div>
					<a href="lookFilm.jsp" target="_blank"><button class="btn btn-block " type="button" >查看全部电影信息</button></a>
					<br>
				<br>
					<br>
				</div>
			</div>
			<br>
			<br>
			<br>
		</div>
	</div>
</div>
</body>
</html>
