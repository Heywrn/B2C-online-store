<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=">
<title>Insert title here</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
body {
	background-color: #544E4E;
}
-->
</style>
</head>
<body>
<%
DBModel db=new DBModel();
String oid=request.getParameter("oid");
ResultSet rs=db.query("select * from od where oid='"+oid+"'");
String uid="";
String way="";
String get="";
String sendtime="";

if(rs.next())
{
uid=rs.getString("uid");
way=rs.getString("way");  
get=rs.getString("get");  
sendtime=rs.getString("sendtime");   
}
%>
<center>
<form action="updatedo.jsp">
<span class="STYLE1">订单号：
<input type="text" name="oid" value=<%=oid %> readonly>
</span>
<p class="STYLE1">
用户id：<input type="text" name="uid" value=<%=uid %> readonly><p class="STYLE1">
配送方式：  <label>  <input type="radio" name="way" value="自提">  </label>
自提   <label><input type="radio" name="way" value="众包物流"></label>众包物流
<p class="STYLE1">
提货点：  <label>  <input type="radio" name="get" value="地铁周边超市">  </label>
  地铁周边超市   <label>  <input type="radio" name="get" value="苏果超市">
  苏果超市</label><p class="STYLE1">  <label>  <input type="radio" name="get" value="加油站">
  加油站    <input type="radio" name="get" value="餐厅">  </label>
  餐厅<p class="STYLE1">
配送时间：
  <label>  <input type="text" name="sendtime">  </label>

<p>
  <span class="STYLE1">
  <input type="submit" value="提交">
  </span>
</form>
</center>
</body>
</html>