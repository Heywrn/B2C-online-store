<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>用户后台管理</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<%
DBM db=new DBM();
String name=request.getParameter("name");
String password=request.getParameter("password");
String sex=request.getParameter("sex");
String id=request.getParameter("id");
String email=request.getParameter("email");
name=new String(name.getBytes("ISO-8859-1"));
password=new String(password.getBytes("ISO-8859-1"));
sex=new String(sex.getBytes("ISO-8859-1"));
String sql1="update user set name='"+name+"' where id='"+id+"'";
String sql2="update user set password='"+password+"' where id='"+id+"'";
String sql3="update user set sex='"+sex+"' where id='"+id+"'";
String sql4="update user set email='"+email+"' where id='"+id+"'";
db.update(sql1);db.update(sql2);db.update(sql3);db.update(sql4);
response.sendRedirect("htuser.jsp");
%>
</body>
</html>