<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
DBM db=new DBM();
String yhid=request.getParameter("yhid");
String oid=request.getParameter("oid");
String spid=request.getParameter("spid");
String spsl=request.getParameter("spsl");
String spzj=request.getParameter("spzj");
String oaddress=request.getParameter("oaddress");
String odate=request.getParameter("odate");
String sql1="update orderinfo set yhid='"+yhid+"' where oid='"+oid+"'";
String sql2="update orderinfo set spid='"+spid+"' where oid='"+oid+"'";
String sql3="update orderinfo set spsl='"+spsl+"' where oid='"+oid+"'";
String sql4="update orderinfo set spzj='"+spzj+"' where oid='"+oid+"'";
String sql5="update orderinfo set oaddress='"+oaddress+"' where oid='"+oid+"'";
String sql6="update orderinfo set odate='"+odate+"' where oid='"+oid+"'";
db.update(sql1);
db.update(sql2);
db.update(sql3);
db.update(sql4);
db.update(sql5);
db.update(sql6);
out.println("您的订单已修改！");
response.sendRedirect("my.jsp");
%>
</body>
</html>