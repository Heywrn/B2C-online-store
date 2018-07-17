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
String id=request.getParameter("id");
name=new String(name.getBytes("ISO-8859-1"));
password=new String(password.getBytes("ISO-8859-1"));
String sql1="update admin set name='"+name+"' where id='"+id+"'";
String sql2="update admin set password='"+password+"' where id='"+id+"'";

db.update(sql1);db.update(sql2);
response.sendRedirect("htadmin.jsp");
%>
</body>
</html>