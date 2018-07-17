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
<meta http-equiv="Content-aaType" content="text/html; charset=GB18030">
<title>读者借阅情况</title>
<style type="text/css">
<!--
body {
	background-image: url(MIS30.jpg);
}
-->
<% 
String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); //获取系统时间 
%>
</style></head>
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
int b=0;
String aid=request.getParameter("aid");
String apw=request.getParameter("apw");
ResultSet rs=db.query("select * from MIS30D05 where aid='"+aid+"'");
if (rs.next())
{ 
if(!rs.getString("apw").equals(apw))
	out.println("<script> alert('登录失败');window.location.href='MIS30P23.jsp';</script>");
ResultSet rs1=db.query("select * from MIS30D04 where hsrq is null");
out.println("<table border=1>");
out.println("<center>");
out.println("<tr>");
out.println("<center>");
out.println("即将过期的用户信息");
out.println("<tr><td>读者号</td><td>书号</td><td>借书日期</td><td>还书日期</td></tr>");
while(rs1.next())
{
Date jsrq=rs1.getDate("jsrq");
b=(int)((now.getTime()-jsrq.getTime())/86400000);
if(b>57)
{	out.println("<td>"+rs1.getString("uid")+"</td>");
	out.println("<td>"+rs1.getString("bid")+"</td>");
	out.println("<td>"+rs1.getString("jsrq")+"</td>");
	out.println("<td>"+rs1.getString("hsrq")+"</td>");
	out.println("</tr>");
} }
out.println("</center>");
out.println("</center>");
out.println("</table>");
out.print(datetime);  
out.print("     ");
out.print("     ");
out.print("操作员：");
out.print(aid);
}
%>
</body>
</center>
</html>