<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-aaType" content="text/html; charset=GB18030">
<title>订单信息</title>
<style type="text/css">
<!--
body {
	background-color: #FFFFCC;
}
-->
</style></head>
<%
DBM db=new DBM();
String id=request.getParameter("id");
String pw=request.getParameter("password");
ResultSet rs=db.query("select * from user where id='"+id+"'");
if (rs.next())
{ if(!rs.getString("password").equals(pw))
	response.sendRedirect("myorder.jsp");
ResultSet rs1=db.query("select * from orderinfo where yhid='"+id+"'");
if(rs1.next()) 
	out.println("1");
out.println("<table border=1>");
out.println("<tr><td>用户id</td><td>订单id</td><td>商品id</td><td>商品数量 </td><td>商品总价</td><td>订单地址</td><td>订单日期</td></tr>");
while(rs1.next())
{
	String oid=rs1.getString("oid");
	out.println("<tr><td>"+rs1.getString("yhid")+"</td>");
	out.println("<td>"+rs1.getString("oid")+"</td>");
	out.println("<td>"+rs1.getString("spid")+"</td>");
	out.println("<td>"+rs1.getString("spsl")+"</td>");
	out.println("<td>"+rs1.getString("spzj")+"</td>");
	out.println("<td>"+rs1.getString("oaddress")+"</td>");
	out.println("<td>"+rs1.getString("odate")+"</td>");
	out.println("<td><a href=deletedo2.jsp?oid="+oid+">删除</a></td>");
	out.println("<td><a href=orderuf1.jsp?oid="+oid+">修改</a></td>");
	out.println("</tr>");
} 
out.println("</table>");
out.println("");
out.println("");
ResultSet rs2=db.query("select * from orderprocess where yhid='"+id+"'");
out.println("<table border=1>");
out.println("<tr><td>订单id</td><td>用户id</td><td>商品id</td><td>待付款</td><td>待收货 </td><td>待评价</td><td>退款</td></tr>");
while(rs2.next())
{
	String oid=rs2.getString("oid");
	out.println("<tr><td>"+rs2.getString("oid")+"</td>");
	out.println("<td>"+rs2.getString("yhid")+"</td>");
	out.println("<td>"+rs2.getString("spid")+"</td>");
	out.println("<td>"+rs2.getString("daifukuan")+"</td>");
	out.println("<td>"+rs2.getString("daishouhuo")+"</td>");
	out.println("<td>"+rs2.getString("daipingjia")+"</td>");
	out.println("<td>"+rs2.getString("tuikuan")+"</td>");
	out.println("<td><a href=deletedo1.jsp?oid="+oid+">删除</a></td>");
	out.println("<td><a href=orderuf2.jsp?oid="+oid+">修改</a></td>");
	out.println("</tr>");
} 
out.println("</table>");
}
%>
</body>
</html>