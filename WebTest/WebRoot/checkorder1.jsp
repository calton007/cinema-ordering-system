<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />  
	<title> 电影在线订票 </title>
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-2.0.0.min.js"></script>
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-ui"></script>
	<link href="http://www.francescomalagrino.com/BootstrapPageGenerator/3/css/bootstrap-combined.min.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/bootstrap.min.js"></script>
</head>
<body>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/cinemamanagersystem"
     user="root"  password="320615"/>
     <sql:query dataSource="${snapshot}" var="result">
		SELECT * from order1;
	</sql:query>
     
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="page-header">
				<h1>
					电影在线订票
				</h1>
			</div>
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						 <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a href="#" class="brand">网站名</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li>
									<a href="index.html">主页</a>
								</li>
								<li>
									<a href="#">电影管理</a>
								</li>
								<li class="active">
									<a href="#">订单管理</a>
								</li>
								<li>
									<a href="#">个人信息</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div> 
			<div class="tabbable" id="tabs-950426">
				<ul class="nav nav-tabs">
					<li class="active">
						<a href="#panel-180295" data-toggle="tab">第一部分</a>
					</li>
					<li>
						<a href="#panel-756633" data-toggle="tab">第二部分</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-180295">
						<table class="table">
							<thead>
								<tr>
									<th>
										编号
									</th>
									<th>
										订单号
									</th>
									<th>
										提交时间
									</th>
									<th>
										状态
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
															
								<c:forEach var="row" items="${result.rows}">
									
									<tr>
   									<td><c:out value="${row.id}"/></td>
   									<td><c:out value="${row.uid}"/></td>
  									 <td><c:out value="${row.fid}"/></td>
  									 <% String temp = "${row.status}";
  									  	if(temp.equals("1")) {%>
  									 		<td>通过</td>
  									 <% }else if(temp.equals("0")) {%>
  									 		<td>未通过</td>
  									 <% }else {%>
  									 		<td>
										<button class="btn btn-primary" type="button" id="${row.id}">通过</button> <button class="btn" type="button">拒绝</button>
									</td>
  									 <% }%>
									</tr>
								</c:forEach>
									
								</tr>
							</tbody>
						</table>
						
					</div>
					<div class="tab-pane" id="panel-756633">
						<table class="table">
							<thead>
								<tr>
									<th>
										编号
									</th>
									<th>
										订单号
									</th>
									<th>
										提交时间
									</th>
									<th>
										状态
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										6
									</td>
									<td>
										TB - Monthly
									</td>
									<td>
										01/04/2012
									</td>
									<td>
										默认
									</td>
								</tr>
								<tr class="success">
									<td>
										7
									</td>
									<td>
										TB - Monthly
									</td>
									<td>
										01/04/2012
									</td>
									<td>
										通过
									</td>
								</tr>
								<tr class="error">
									<td>
										8
									</td>
									<td>
										TB - Monthly
									</td>
									<td>
										02/04/2012
									</td>
									<td>
										拒绝
									</td>
								</tr>
								<tr class="warning">
									<td>
										9
									</td>
									<td>
										TB - Monthly
									</td>
									<td>
										03/04/2012
									</td>
									<td>
										<button class="btn btn-primary" type="button">通过</button> <button class="btn" type="button">拒绝</button>
									</td>
								</tr>
								<tr class="info">
									<td>
										10
									</td>
									<td>
										TB - Monthly
									</td>
									<td>
										04/04/2012
									</td>
									<td>
										<button class="btn btn-primary" type="button">通过</button> <button class="btn" type="button">拒绝</button>
									</td>
								</tr>
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