<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆</title>
    
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

  <body style="background-color:Plum ">
<div class="container-fluid" style="background-color:LightGoldenRodYellow ">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						 <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a href="#" class="brand">电影在线下单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li class="active">
									<a href="success.jsp">主页</a>
								</li>
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
			
			<div class="container-fluid" id="LG">
				<div class="row-fluid">
					<div class="span12">
						<h1 class="text-center text-info">
							 <strong>电影在线订单</strong>
						</h1>
						<h1 class="text-center text-info">
							 <var><span class="marker"><strong>​</strong>今天的电影很精彩，想要浏览更多，请登陆哦，亲！</span></var>
						</h1>
	<form action="LoginServlet" method="post">
					<div class="control-group">
							 <label class="control-label" for="inputPassword">用户名</label>
							<div class="controls">
								<input id="inputPassword" type="text"  name="username"/>
							</div>
							<div class="control-group">
								 <label class="control-label" for="inputPassword" >密码</label>
								<div class="controls">
									<input id="inputPassword" type="password" name="password"/>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									 <label class="checkbox"><input type="checkbox" /> 记住我</label> 
									 <button class="btn" type="submit">登陆</button>
									
								</div>
							</div>
						</div>
	</form>
	<button class="btn" type="submit"><a href="insert.jsp">注册</a></button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
