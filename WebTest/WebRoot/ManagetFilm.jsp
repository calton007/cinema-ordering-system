<%@page import="com.file.SuperClass"%>
<%@page import="com.service.imp.StarCinemaServiceImp"%>
<%@page import="com.service.StarCinemaService"%>
<%@page import="com.file.StarCinema"%>
<%@page import="com.file.HCinema"%>
<%@page import="com.service.imp.HCinemaServiceImp"%>
<%@page import="com.service.HCinemaService"%>
<%@page import="com.service.imp.FilmServiceImp"%>
<%@page import="com.service.FilmService"%>
<%@page import="com.service.imp.CinemaServiceImp"%>
<%@page import="com.service.CinemaService"%>
<%@page import="com.file.Cinema"%>
<%@page import="com.service.UserService"%>
<%@page import="com.service.imp.UserServiceImp"%>
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
    
    <title>管理电影</title>
    
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


<% 
 User u=(User)session.getAttribute("user");
  System.out.println(session.getAttribute("user"));

  session.setAttribute("user", u);
  %>
  
 <% 
  if(u.getC_name().equals("c1"))
  {
	  List<Cinema> list=new ArrayList();
	  CinemaService CS=new CinemaServiceImp();
	  list=(List<Cinema>) CS.getAllCinema();
	  int length=list.size();
	  int id=length-1;
	  FilmService FS=new FilmServiceImp();
	  %>
 <div class="container-fluid" style="background-color:LightGoldenRodYellow ">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						<a class="btn btn-navbar" data-target=".navbar-responsive-collapse" data-toggle="collapse"></a> <a class="brand" href="#">电影在线管理订单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
							
							
								<li class="active">
									<a href="ManagetFilm.jsp"><%=u.getC_name() %>管理电影</a>
								</li>
								<li>
									<a href="ManagerOrder.jsp">管理订单</a>
								</li>
								<li>
									<a href="ManagerA.jsp">账户信息维护</a>
								</li>
							</ul>
							
							
						
						</div>
					</div>
				</div>
			</div>
			
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<h3 class="text-center">
							电影放映信息
						</h3>
						<table class="table">
							<thead>
								<tr>
									<th>
										编号
									</th>
									<th>
										电影名称
									</th>
									<th>
										电影放映场次
									</th>
									<th>
										电影票价格
									</th>
									<th>
										电影描述信息
									</th>
									<th>
										票余量
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
									<%=FS.checkById(list.get(id).getFid().intValue()).getName().toString() %>
								</td>
								<td>
								<%=list.get(id).getPlace()+" "+list.get(id).getTime() %>
								</td>
								<td>
									<%=list.get(id).getPrice() %>
								</td>
								<td>
									<%=list.get(id).getShowtext() %>
								
                                 <td>
                                 <td>
									<%=list.get(id).getNum() %>
								
                                 <td>
									<a href="addshow.jsp?id=<%=list.get(id).getId().toString() %>" target="_blank"><button class="btn btn-primary" type="button">编辑</button></a>
									<input type="button" value="删除" onclick="javascript:location.href='delServlet?id=<%=list.get(id).getId().toString()%>&uid=<%=u.getId() %>'"></input>
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
			<a href="lookFilm.jsp" target="_blank"><button class="btn btn-block " type="button" >查看电影信息</button></a>
			<a href="addFilm.jsp" target="_blank"><button class="btn btn-block " type="button" >从已有的电影列表中选择电影ID,添加电影</button></a>
		</div>
	</div>
</div>
	  
	  
	  <% }%>
	  
	  
 <% 
  if(u.getC_name().equals("c2"))
  {
	  HCinemaService HS=new HCinemaServiceImp();
	  List<HCinema> list=HS.getAllCinema();
	  int length=list.size();
	  int id=length-1;
	  FilmService FS=new FilmServiceImp();
	  %>
<div class="container-fluid" style="background-color:LightGoldenRodYellow ">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						<a class="btn btn-navbar" data-target=".navbar-responsive-collapse" data-toggle="collapse"></a> <a class="brand" href="#">电影在线管理订单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
					
						
							<ul class="nav">
								<li class="active">
									<a href="ManagetFilm.jsp"><%=u.getC_name() %>管理电影</a>
								</li>
								<li>
									<a href="ManagerOrder.jsp">管理订单</a>
								</li>
								<li>
									<a href="ManagerA.jsp">账户信息维护</a>
								</li>
							</ul>
							
							
						
						</div>
					</div>
				</div>
			</div>
			
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<h3 class="text-center">
							电影放映信息
						</h3>
						<table class="table">
							<thead>
								<tr>
									<th>
										编号
									</th>
									<th>
										电影名称
									</th>
									<th>
										电影放映场次
									</th>
									<th>
										电影票价格
									</th>
									<th>
										电影描述信息
									</th>
									<th>
										票余量
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
									<%=FS.checkById(list.get(id).getFid().intValue()).getName().toString() %>
								</td>
								<td>
								<%=list.get(id).getPlace()+" "+list.get(id).getTime() %>
								</td>
								<td>
									<%=list.get(id).getPrice() %>
								</td>
								<td>
									<%=list.get(id).getShowtext() %>
								</td>
								 <td>
									<%=list.get(id).getNum() %>
								
                                 <td>
                                 <td>
									<a href="addshow.jsp"><button class="btn btn-primary" type="button">编辑</button></a>
									<input type="button" value="删除" onclick="javascript:location.href='delServlet?id=<%=list.get(id).getId().toString()%>&uid=<%=u.getId() %>'"></input>
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
			<a href="lookFilm.jsp" target="_blank"><button class="btn btn-block " type="button" >查看电影信息</button></a>
			<a href="addFilm.jsp" target="_blank"><button class="btn btn-block " type="button" >从已有的电影列表中选择电影ID,添加电影</button></a>
		</div>
	</div>
</div>
<%} %>

<%
if(u.getC_name().equals("c3"))
{
	 StarCinemaService SS=new StarCinemaServiceImp();
	  List<StarCinema> list=SS.getAllCinema();
	  int length=list.size();
	  int id=length-1;
	  FilmService FS=new FilmServiceImp();
	  %>
<div class="container-fluid" style="background-color:LightGoldenRodYellow ">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						<a class="btn btn-navbar" data-target=".navbar-responsive-collapse" data-toggle="collapse"></a> <a class="brand" href="">电影在线管理订单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
					
						
							<ul class="nav">
								<li class="active">
									<a href="ManagetFilm.jsp"><%=u.getC_name() %>管理电影</a>
								</li>
								<li>
									<a href="ManagerOrder.jsp">管理订单</a>
								</li>
								<li>
									<a href="ManagerA.jsp">账户信息维护</a>
								</li>
							</ul>
							
							
						
						</div>
					</div>
				</div>
			</div>
			
			<div class="container-fluid" style="background-color:LightGoldenRodYellow ">
				<div class="row-fluid">
					<div class="span12">
						<h3 class="text-center">
							电影放映信息
						</h3>
						<table class="table">
							<thead>
								<tr>
									<th>
										编号
									</th>
									<th>
										电影名称
									</th>
									<th>
										电影放映场次
									</th>
									<th>
										电影票价格
									</th>
									<th>
										电影描述信息
									</th>
									<th>
										票余量
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
									<%=FS.checkById(list.get(id).getFid().intValue()).getName().toString() %>
								</td>
								<td>
								<%=list.get(id).getPlace()+" "+list.get(id).getTime() %>
								</td>
								<td>
									<%=list.get(id).getPrice() %>
								</td>
								<td>
									<%=list.get(id).getShowtext() %>
								</td>
								 <td>
									<%=list.get(id).getNum() %>
								
                                 <td>
                                 <td>
									<a href="addshow.jsp"><button class="btn btn-primary" type="button">编辑</button></a>
									<input type="button" value="删除" onclick="javascript:location.href='delServlet?id=<%=list.get(id).getId().toString()%>&uid=<%=u.getId() %>'"></input>
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
			<a href="lookFilm.jsp" target="_blank"><button class="btn btn-block " type="button" >查看电影信息</button></a>
			<a href="addFilm.jsp" target="_blank"><button class="btn btn-block " type="button" >从已有的电影列表中选择电影ID,添加电影</button></a>
		</div>
	</div>
</div>
	  
	  
	  
<%} %>
</body>
</html>
