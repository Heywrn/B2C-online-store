<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@page import="java.sql.*,a.DBM" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar"%> 
    <%@ page import="java.util.*" %> 
<%@ page import="java.text.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<style type="text/css">
<!--
body {
	background-image: url(MIS30.jpg);
}
-->
<% 
String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); //获取系统时间 
%>
</style>
</head>
<body>
<center>
<form action="">
<br>
<br>
<br>
</form> 
</center>
<center>
<%
DBM db=new DBM();
Date now=new Date();
String sql="select * from mis30d09";
ResultSet rs=db.query(sql);
out.println("图书借阅频率-按月统计");
out.println("<table border=1>");
out.println("<center>");
out.println("<tr><td>排名</td><td>书号</td><td>书名</td><td>借阅次数</td><td>状态</td><td>价格</td></tr>");
while(rs.next())
{
	out.println("<tr><td>"+rs.getString("pm")+"</td>");
    out.println("<td>"+rs.getString("bid")+"</td>");
	out.println("<td>"+rs.getString("bname")+"</td>");
	out.println("<td>"+rs.getString("jycs")+"</td>");
	out.println("<td>"+rs.getString("bstate")+"</td>");
	out.println("<td>"+rs.getString("bprice")+"</td>");
	out.println("</tr>");
}
out.println("</center>");
out.println("</table>");
out.print(datetime);  

%>
</body>
