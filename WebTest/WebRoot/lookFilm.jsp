<%@page import="com.file.User"%>
<%@page import="com.service.imp.FilmServiceImp"%>
<%@page import="com.service.FilmService"%>
<%@page import="com.file.Film"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看电影列表</title>
    
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
  <%
  User u=(User) session.getAttribute("user");
  System.out.println(session.getAttribute("user"));

  session.setAttribute("user", u);
  
  FilmService FS=new FilmServiceImp();
  List<Film> list=FS.checkAll();
  int id=0;
  int length=list.size();
  
  %>
  <body style="background-color:LightGoldenRodYellow ">
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
									
								</li>
								<li>
									
								</li>
								<li class="active">
									<a href="">全部电影列表</a>
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
							全部电影列表
						</h3>
						<%if(u.getC_name()!=null)
							{%>
						<a href="addlist.jsp" target="_blank"><button class="btn btn-primary" type="button">添加电影</button></a>
						<%} %>
						<table class="table">
							<thead>
								<tr>
									<th>
									      电影编号
									</th>
									<th>
										电影名
									</th>
									<th>
										电影上映日期
									</th>
									<th>
										电影时长
									</th>
									<th>
										导演
									</th>
									<th>
										电影类型
									</th>
									<th>
										语言
									</th>
									<th>
										预告链接
									</th>
									<th>
									
									</th>
									
								</tr>
							</thead>
							<tbody>
							
							<%while(id<length) 
						{
						%>
								<tr >
									<td>
										<%=list.get(id).getId() %>
									</td>
									<td>
										<%=list.get(id).getName() %>
									</td>
									<td>
									    <%=list.get(id).getDate() %>
									</td>
									<td>
										<%=list.get(id).getTime()%>
									</td>
									<td>
										<%=list.get(id).getDirector() %>
									</td>
									<td>
										<%=list.get(id).getType() %>
									</td>
									<td>
										<%=list.get(id).getLanguage() %>
									</td>
									<td>
										<a href="<%=list.get(id).getLink() %>"><%=list.get(id).getLink() %></a>
									</td>
									
									<td>
										<a href="see.jsp?fid=<%=list.get(id).getId() %>" target="_blank"><button  class="btn btn-primary" type="button" >查看影评</button></a>
									</td>
									
									
								</tr>
						<%
						id++;
						}
						%>
								
							</tbody>
						</table>
						
						
				<br>
				<br>
				<br>
				<br>
				
				<a href="express.jsp" target="_blank"><button class="btn btn-block " type="button" >添加影评</button></a>
					<br>
				<br>
				<br>
				<br>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
  </body>
</html>
