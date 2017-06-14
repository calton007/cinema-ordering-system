<%@page import="com.file.Film"%>
<%@page import="com.file.StarCinema"%>
<%@page import="com.service.imp.StarCinemaServiceImp"%>
<%@page import="com.service.StarCinemaService"%>
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
    
    <title>查看电影</title>
    
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
  
  Film film=(Film) session.getAttribute("film");

  session.setAttribute("user", u);
CinemaService CS=new CinemaServiceImp();
HCinemaService HS=new HCinemaServiceImp();
StarCinemaService SS=new StarCinemaServiceImp();
List<Cinema> list1=CS.searchfilm(film.getId());
List<HCinema> list2=HS.searchfilm(film.getId());
List<StarCinema> list3=SS.searchfilm(film.getId());
int length=0;
int id=0;
if(list1!=null)
 length=list1.size();

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
										<a href="#"><%=u.getU_name() %></a>
									</li>
									<li>
										<a href="#"><%=u.getId() %></a>
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
								该电影信息
							</h3>
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
										预告片下载链接
									</th>
									
								</tr>
							</thead>
							<tbody>
							
						
								<tr >
									<td>
										<%=film.getId() %>
									</td>
									<td>
										<%=film.getName() %>
									</td>
									<td>
									    <%=film.getDate() %>
									</td>
									<td>
										<%=film.getTime() %>
									</td>
									<td>
										<%=film.getDirector() %>
									</td>
									<td>
										<%=film.getType() %>
									</td>
									<td>
										<%=film.getLanguage() %>
									</td>
									<td>
										<%=film.getLink() %>
									</td>
					
								
							</tbody>
						</table>
							<h3 class="text-center">
								电影在影院放映信息
							</h3>
							<table class="table" style="background-color:Plum ">
								<thead>
									<tr>
										<th>
											电影院名称
										</th>
										<th>
											在该电影院播发列单中 编号
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
						
										  
						<%while(id<length&&list1!=null) 
						{
						%>
								<tr >
									<td>
										电影院一：嘉华影城
									</td>
									<td>
										<%=list1.get(id).getId() %>
									</td>
									<td>
										<%=film.getName() %>
									</td>
									<td>
									<%=list1.get(id).getPlace()+list1.get(id).getTime() %>
									</td>
									<td>
										<%=list1.get(id).getPrice() %>
									</td>
									<td>
										<%=list1.get(id).getShowtext() %>
									</td>
									<td>
										<%=list1.get(id).getNum() %>
									</td>
									<td>
									<input type="button" value="下单" onclick="javascript:location.href='orderServlet?fid=<%=film.getId().toString() %>&cid=<%=1 %>&uid=<%=u.getId().toString() %>&id=<%=list1.get(id).getId() %>'"></input>
										
									</td>
								</tr>
						<%
						id++;
						}
						%>
						
						<%id=0;
						if(list2!=null)
						length=list2.size(); %>
					
							<%while(id<length&&list2!=null) 
						{
						%>
								<tr >
									<td>
										电影院二：国际影视
									</td>
									<td>
										<%=list2.get(id).getId() %>
									</td>
									<td>
										<%=film.getName() %>
									</td>
									<td>
									<%=list2.get(id).getPlace()+list2.get(id).getTime() %>
									</td>
									<td>
										<%=list2.get(id).getPrice() %>
									</td>
									<td>
										<%=list2.get(id).getShowtext() %>
									</td>
									<td>
										<%=list2.get(id).getNum() %>
									</td>
									<td>
									<input type="button" value="下单" onclick="javascript:location.href='orderServlet?fid=<%=film.getId().toString() %>&cid=<%=2 %>&uid=<%=u.getId().toString() %>&id=<%=list2.get(id).getId() %>'"></input>
										
									</td>
								</tr>
						<%
						id++;
						}
						%>
						
						<%id=0;
						if(list3!=null)
						length=list3.size();
						%>
						
							<%while(id<length&&list3!=null) 
						{
						%>
								<tr >
									<td>
										电影院三：看看不停
									</td>
									<td>
										<%=list3.get(id).getId() %>
									</td>
									<td>
										<%=film.getName() %>
									</td>
									<td>
									<%=list3.get(id).getPlace()+list3.get(id).getTime() %>
									</td>
									<td>
										<%=list3.get(id).getPrice() %>
									</td>
									<td>
										<%=list3.get(id).getShowtext() %>
									</td>
									<td>
										<%=list3.get(id).getNum() %>
									</td>
									<td>
									<input type="button" value="下单" onclick="javascript:location.href='orderServlet?fid=<%=film.getId().toString() %>&cid=<%=3 %>&uid=<%=u.getId().toString() %>&id=<%=list3.get(id).getId() %>'"></input>
										
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
