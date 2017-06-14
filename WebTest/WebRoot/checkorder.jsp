<%@page import="com.file.Order"%>
<%@page import="com.service.imp.OrderServiceImp"%>
<%@page import="com.service.OrderService"%>
<%@page import="com.service.imp.FilmServiceImp"%>
<%@page import="com.service.FilmService"%>
<%@page import="com.service.imp.UserServiceImp"%>
<%@page import="com.service.UserService"%>
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
    
    <title>查看订单</title>
    
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
  
  OrderService OS=new OrderServiceImp();
  List<Order> list=OS.checkOrder(u.getId().intValue());
   
  int id=list.size()-1;  
  FilmService FS=new FilmServiceImp();
  
 UserService US=new UserServiceImp();
  
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
									<a href="success.jsp"><%=u.getId() %>主页</a>
								</li>
								<li>
									<a href="upuser.jsp"><%=u.getU_name() %>个人信息修改</a>
								</li>
								<li>
									<a href="checkcinema.jsp">影院浏览</a>
								</li>
								<li class="active">
									<a href="checkorder.jsp"><%=u.getU_name() %>查看订单</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid" style="background-color:Plum ">
				<div class="row-fluid">
					<div class="span12">
						<h3 class="text-center">
							订单状态
						</h3>
						<table class="table">
							<thead>
								<tr>
									<th>
										编号
									</th>
									<th>
										电影名
									</th>
									<th>
										电影院名
									</th>
									<th>
										下单时间
									</th>
									<th>
										审批状态
									</th>
								</tr>
							</thead>
							<tbody>
							
							<%while(id>=0) 
						{
						%>
								<tr >
									<td>
										<%=list.get(id).getId() %>
									</td>
									<td>
										<%=FS.checkById(list.get(id).getFid().intValue()).getName() %>
									</td>
									<td>
									    <%=US.searchById(list.get(id).getCid().intValue()).getC_name() %>
									</td>
									<td>
										<%=list.get(id).getTime()%>
									</td>
									<td>
										<%if(list.get(id).getStatus()==0) 
										{%>未审核，未通过<%} %>
										<%if(list.get(id).getStatus()==1) 
										{%>通过<%} %>
										<%if(list.get(id).getStatus()==2) 
										{%>已审核，未通过<%} %>
										<%if(list.get(id).getStatus()==3) 
										{%>申请退单，请等待处理<%} %>
										<%if(list.get(id).getStatus()==4) 
										{%>退单成功<%} %>
									</td>
									
									<td>
										<input type="button" value="退单" onclick="javascript:location.href='quitServlet?id=<%=list.get(id).getId().toString()%>&status=<%=list.get(id).getStatus() %>'"></input>
										<input type="button" value="申请退单" onclick="javascript:location.href='PleaseServlet?id=<%=list.get(id).getId().toString()%>&status=<%=list.get(id).getStatus() %>'"></input>
										<input type="button" value="删除" onclick="javascript:location.href='delorderServlet?id=<%=list.get(id).getId().toString()%>&status=<%=list.get(id).getStatus() %>'"></input>
																								
									</td>
								</tr>
						<%
						id--;
						}
						%>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
