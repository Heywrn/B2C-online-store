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
String sql="select * from mis30d06";
ResultSet rs=db.query(sql);
out.println("读者读书量");
out.println("<table border=1>");
out.println("<center>");
out.println("<tr><td>读者号</td><td>按天统计</td><td>按周统计</td><td>总体统计</td><td>统计时间</td></tr>");
while(rs.next())
{
	out.println("<tr><td>"+rs.getString("uid")+"</td>");
    out.println("<td>"+rs.getString("day")+"</td>");
	out.println("<td>"+rs.getString("week")+"</td>");
	out.println("<td>"+rs.getString("al")+"</td>");
	out.println("<td>"+rs.getString("time")+"</td>");
	out.println("</tr>");
}
out.println("</center>");
out.println("</table>");
out.print(datetime);  

%>
</body>
