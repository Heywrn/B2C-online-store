<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
        <%@ page import="java.sql.*,a.DBM,java.util.*" %> 
<%@ page import="java.text.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-aaType" content="text/html; charset=GB18030">
<title>用户信息修改</title>
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
String uid=request.getParameter("uid");
String upw=request.getParameter("upw");
String bname="";
if(uid.equals("")||upw.equals(""))
{
	out.println("<script> alert('请输入信息');window.location.href='MIS30P20.jsp';</script>");
}
ResultSet rs=db.query("select * from MIS30D02 where uid='"+uid+"'");
if (rs.next())
{ 
if(!rs.getString("upw").equals(upw))
	out.println("<script> alert('登录失败');window.location.href='MIS30P20.jsp';</script>");
ResultSet rs1=db.query("select * from MIS30D04 where uid='"+uid+"'");

out.println("<table border=1>");
out.println("<center>");
out.println("<tr>");
out.println("<center>");
out.println("用户借书信息");
out.println("<tr><td>书号</td><td>书名</td><td>借书日期</td><td>还书日期</td></tr>");
while(rs1.next())
{
	String bid=rs1.getString("bid");
	ResultSet rs2=db.query("select * from mis30d03 where bid='"+bid+"'");
	if(rs2.next())
		bname=rs2.getString("bname");
	out.println("<td>"+rs1.getString("bid")+"</td>");
	out.println("<td>"+bname+"</td>");
	out.println("<td>"+rs1.getString("jsrq")+"</td>");
	out.println("<td>"+rs1.getString("hsrq")+"</td>");
	out.println("</tr>");
} 
out.println("</center>");
out.println("</center>");
out.println("</table>");
out.print(datetime);  
out.print("                                 ");
out.print("操作用户：");
out.print(uid);
}
%>
</body>
</center>
</html>