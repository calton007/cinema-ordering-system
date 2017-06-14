<%@page import="com.service.imp.CinemaServiceImp"%>
<%@page import="com.service.CinemaService"%>
<%@page import="com.service.imp.HCinemaServiceImp"%>
<%@page import="com.service.HCinemaService"%>
<%@page import="com.service.imp.StarCinemaServiceImp"%>
<%@page import="com.service.StarCinemaService"%>
<%@page import="com.file.Order"%>
<%@page import="com.service.OrderService"%>
<%@page import="com.service.imp.OrderServiceImp"%>
<%@page import="com.file.User"%>
<%@page import="com.service.imp.UserServiceImp"%>
<%@page import="com.service.UserService"%>
<%@page import="com.service.imp.FilmServiceImp"%>
<%@page import="com.service.FilmService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看账户信息</title>
    
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
  
  <body style="font-size:18px"  style="background-color:LightGray ">
  
   <%
  User user=(User)session.getAttribute("user");
   System.out.println(session.getAttribute("user"));

   session.setAttribute("user", user);
   

   System.out.println(user==null);
 %>

  <br>

  <br>
 
  <br>

  <br>

 <div class="container-fluid" style="background-color:LightGoldenRodYellow ">
	<div class="row-fluid">
		<div class="span6">
		    <blockquote>
				<p>
					电影院的账户信息浏览
				</p> 
			</blockquote>
					<dl>
				<dt>
					<strong>账户名（不可更改）</strong>
				</dt>
				<dd>
					<%=user.getC_name() %>
				</dd>
				<dt>
					<strong>电话 </strong>
				</dt>
				<dd>
					<%=user.getTel() %>
				</dd>
				<dd>
					
				</dd>
				<dt>
					<strong>邮箱 </strong>
				</dt>
				<dd>
					 <%=user.getEmail() %>
				</dd>
				<dt>
				  <strong> 已有电影列表数 </strong>
				</dt>
				<dd>
					<%if(user.getId()==1)
						{
						CinemaService CS=new CinemaServiceImp();%>
						<%=CS.getAllCinema().size() %>
						
						<% }%>
					<%if(user.getId()==2)
						{
						HCinemaService HS=new HCinemaServiceImp();%>
						<%=HS.getAllCinema().size() %>
						
						<% }%>
						<%if(user.getId()==3)
						{
						StarCinemaService SS=new StarCinemaServiceImp();%>
						<%=SS.getAllCinema().size() %>
						
						<% }%>
				</dd>
				<dt>
					  <strong> 已有订单数目 </strong>
				</dt>
				<dd>
					<%
					OrderService OS=new OrderServiceImp();
					List<Order> list1=OS.checkOrderC(user.getId());
					%>
					<%=list1.size() %>
				</dd>
			</dl>
	
		</div>
	 

		<div class="span6" style="background-color:Plum ">
			<form action="UpdateServelet" method="post">
						<div class="control-group">
						    <label class="control-label" for="inputPassword">影院账户名(不可更改)</label>
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
							 <label class="control-label" for="inputPassword">电话号码</label>
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
