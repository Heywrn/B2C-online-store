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
int a=0;
int b=1;
String sql="select bid,count(*) as a from mis30d04 WHERE TO_DAYS(NOW()) - TO_DAYS(jsrq) <=30 group by bid order by a desc limit 10 ";
ResultSet rs=db.query(sql);
out.println("图书借阅频率-按月统计");
out.println("<table border=1>");
out.println("<center>");
out.println("<tr><td>排名</td><td>书号</td><td>书名</td><td>借阅次数</td><td>出版社</td><td>状态</td><td>价格</td></tr>");
while(rs.next())
{
	String bid=rs.getString("bid");
	a=rs.getInt("a");
	String sql1="select * from mis30d03 where bid='"+bid+"'";
	ResultSet rs1=db.query(sql1);
	if(rs1.next())
	{
	out.println("<tr><td>"+b+"</td>");
    out.println("<td>"+rs.getString("bid")+"</td>");
	out.println("<td>"+rs1.getString("bname")+"</td>");
	out.println("<td>"+a+"</td>");
	out.println("<td>"+rs1.getString("bcbs")+"</td>");
	out.println("<td>"+rs1.getString("bstate")+"</td>");
	out.println("<td>"+rs1.getString("bprice")+"</td>");
	out.println("</tr>");
	String sql2="update mis30d09 set bid='"+rs.getString("bid")+"' where pm='"+b+"'";
	String sql3="update mis30d09 set bname='"+rs1.getString("bname")+"' where pm='"+b+"'";
	String sql4="update mis30d09 set jycs='"+a+"' where pm='"+b+"'";
	String sql6="update mis30d09 set bstate='"+rs1.getString("bstate")+"' where pm='"+b+"'";
	String sql7="update mis30d09 set bprice='"+rs1.getString("bprice")+"' where pm='"+b+"'";
	String sql8="update mis30d09 set time='"+datetime+"' where pm='"+b+"'";
	db.update(sql2);
	db.update(sql3);
	db.update(sql4);
	db.update(sql6);
	db.update(sql7);
	db.update(sql8);
	}
	b++;
}
out.println("</center>");
out.println("</table>");
out.print(datetime);  

%>
</body>
