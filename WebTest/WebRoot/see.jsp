<%@page import="com.file.Express"%>
<%@page import="com.service.imp.ExpressServiceImp"%>
<%@page import="com.service.ExpressService"%>
<%@page import="com.file.User"%>
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
    
    <title>电影影评</title>
    
	 
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
  User u=(User) session.getAttribute("user");
  System.out.println(session.getAttribute("user"));

  session.setAttribute("user", u);
  Integer fid=Integer.parseInt(request.getParameter("fid"));
  
  ExpressService ES=new ExpressServiceImp();
  List<Express> list=ES.getF(fid);
  FilmService FS=new FilmServiceImp();
  
  int id=0;
  int length=0;
  if(list!=null)
 length=list.size();
  
  %>
   <div class="container-fluid" style="background-color:Plum ">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						<a class="btn btn-navbar" data-target=".navbar-responsive-collapse" data-toggle="collapse"></a> <a class="brand" href="#">电影在线管理订单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li >
									
								</li>
								<li class="active">
									
								</li>
								<li>
									
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
							电影影评
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
										评论内容
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
										<%=FS.checkById(list.get(id).getFid().intValue()).getName().toString() %>
									</td>
									<td>
										<%=list.get(id).getCon() %>
									</td>
									<td>
									<%if(u.getC_name()!=null)
							{%>
								<input type="button" value="删除该评论" onclick="javascript:location.href='delexServlet?id=<%=list.get(id).getId() %>'"></input>
								<%} %>
								</td>
								</tr>
						<%    
						id++;
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
