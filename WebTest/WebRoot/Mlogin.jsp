<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登陆</title>
    
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
		<div class="span12" >
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						<a class="btn btn-navbar" data-target=".navbar-responsive-collapse" data-toggle="collapse"></a> <a class="brand" href="#">电影在线管理订单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li class="active">
									<a href="Mlogin.jsp">登陆主页</a>
								</li>
								<li >
									<a href="">管理电影</a>
								</li>
								<li>
									<a href="">管理订单</a>
								</li>
								<li>
									<a href="">账户信息维护</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
				<form action="Clogin" method="post">
					<div class="control-group">
							 <label class="control-label" for="inputPassword">管理注册名</label>
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
			
			
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
		</div>
	</div>
</div>
</body>
</html>
