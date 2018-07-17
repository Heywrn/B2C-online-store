<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>订单后台管理</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center>
<font face="宋体" size="6" ><b>订单后台管理</b></font>&nbsp;&nbsp;&nbsp;<a href="htorder.jsp">返回</a><br><br>
<form action="htorder1.jsp">
按用户名查询：<input type="text" name="yhid">
<input type="submit" value="查询">
</form>
<% 
DBM db=new DBM();
String yhid="";
if(request.getParameter("yhid")!=null&&request.getParameter("yhid")!="")
{
yhid=request.getParameter("yhid");
yhid=new String (yhid.getBytes("ISO-8859-1"));
}
String sql="select * from orderinfo";
if(yhid!="")
sql="select * from orderinfo where yhid like '%"+yhid+"%'";
ResultSet rs=db.query(sql);
out.println("<br><table border=1 >");
out.println("<tr><td><center>订单号<center></td><td><center>订单处理人ID</center></td><td><center>用户名</center></td><td><center>商品名</center></td><td><center>商品数量</center></td><td><center>商品总价</center></td><td><center>用户地址</center></td><td><center>订单产生日期</center></td><td><center>操作</center></td><td><center>操作</center></td></tr>");
while(rs.next())
 {
	String oid=rs.getString("oid");
	out.println("<tr><td><center>"+oid+"<center></td>");
	out.println("<td><center>"+rs.getString("oclid")+"</center></td>");
	out.println("<td><center>"+rs.getString("yhid")+"</center></td>");
	out.println("<td><center>"+rs.getString("spid")+"</center></td>");
	out.println("<td><center>"+rs.getString("spsl")+"</center></td>");
	out.println("<td><center>"+rs.getString("spzj")+"</center></td>");
	out.println("<td><center>"+rs.getString("oaddress")+"</center></td>");
	out.println("<td><center>"+rs.getString("odate")+"</center></td>");
	out.println("<td><center><a href=htorderdeletedo.jsp?oid="+oid+">删除</a></center></td>");
	out.println("<td><center><a href=htorderupdateform.jsp?oid="+oid+">修改</a></center></td>");
	out.println("</tr>");

} 
out.print("</TABLE>");
%>