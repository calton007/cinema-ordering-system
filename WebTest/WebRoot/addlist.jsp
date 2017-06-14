<%@page import="com.file.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"

"http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加电影</title>
    
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
	--><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<SCRIPT language=JavaScript>
<!--
var LastCount =0;
function CountStrByte(Message,Total,Used,Remain){ //字节统计
 var ByteCount = 0;
 var StrValue  = Message.value;
 var StrLength = Message.value.length;
 var MaxValue  = Total.value;
 if(LastCount != StrLength) { // 在此判断，减少循环次数
	for (i=0;i<StrLength;i++){
		ByteCount  = (StrValue.charCodeAt(i)<=256) ? ByteCount + 1 : ByteCount + 2;
      if (ByteCount>MaxValue) {
      	Message.value = StrValue.substring(0,i);
			alert("评论内容最多不能超过 " +MaxValue+ " 个字节！\n注意：一个汉字为两字节。");
         ByteCount = MaxValue;
         break;
      }
	}
   Used.value = ByteCount;
   Remain.value = MaxValue - ByteCount;
   LastCount = StrLength;
 }
}
//-->
</SCRIPT>
</head>
  

<body style="font-size:18px"  style="background-color:Aquamarine  ">
<% 
 User u=(User)session.getAttribute("user");
  System.out.println(session.getAttribute("user"));

  session.setAttribute("user", u);
  %>
   <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						<a class="btn btn-navbar" data-target=".navbar-responsive-collapse" data-toggle="collapse"></a> <a class="brand" href="#">电影在线管理订单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li class="active">
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
<table border="0" align="center" cellpadding="0" cellspacing="0" style="background-color:Aquamarine  ">
 <tr>
    <td>&nbsp;</td>
    <td align="center" valign="middle"><table width="95%" border="0" cellspacing="0" cellpadding="0">
      <form name="form1" action="addlist" method="post">
        <tr>
          <td width="23%" height="22" align="right" class="font2">电影名称</td>
          <td width="77%" height="22" align="left"><input name="name" type="text" class="textbox" id="name" /></td>
        </tr>
        <tr>
          <td width="23%" height="22" align="right" class="font2">上映时间</td>
          <td width="77%" height="22" align="left"><input name="date" type="text" class="textbox" id="date" /></td>
        </tr>
        <tr>
          <td width="23%" height="22" align="right" class="font2">电影片长</td>
          <td width="77%" height="22" align="left"><input name="time" type="text" class="textbox" id="time" /></td>
        </tr>
        <tr>
          <td width="23%" height="22" align="right" class="font2">导演</td>
          <td width="77%" height="22" align="left"><input name="director" type="text" class="textbox" id="director"/></td>
        </tr>
        <tr>
          <td width="23%" height="22" align="right" class="font2">类型</td>
          <td width="77%" height="22" align="left"><input name="type" type="text" class="textbox" id="type"/></td>
        </tr>
        <tr>
          <td width="23%" height="22" align="right" class="font2">状态</td>
          <td width="77%" height="22" align="left"><input name="status" type="text" class="textbox" id="status"/></td>
        </tr>
        <tr>
          <td width="23%" height="22" align="right" class="font2">语言</td>
          <td width="77%" height="22" align="left"><input name="language" type="text" class="textbox" id="language"/></td>
        </tr>
        <tr>
          <td width="23%" height="22" align="right" class="font2">预告链接</td>
          <td width="77%" height="22" align="left"><input name="link" type="text" class="textbox" id="link"/></td>
        </tr>
        <tr>
          <td height="22">&nbsp;</td>
          <td height="22" align="left"><input name="add" type="submit" class="button" id="add" value="提 交" />
         </td>
        </tr>
      </form>
    </table>
    </td>
  </tr>
  <tr>
    <td height="100">&nbsp;</td>
    <td height="100">&nbsp;</td>
  </tr>
</table>
			
		</div>
	</div>
</div>
</body>
</html>