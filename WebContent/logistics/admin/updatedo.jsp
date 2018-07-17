<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
DBModel db=new DBModel();
String oid="1";
String whe=request.getParameter("whe");
String nowa=request.getParameter("nowa");
whe=new String(whe.getBytes("ISO-8859-1"));
nowa=new String(nowa.getBytes("ISO-8859-1"));
String sql1="update ord set whe='"+whe+"' where oid='"+oid+"'";
String sql2="update ord set nowa='"+nowa+"' where oid='"+oid+"'";
db.update(sql1);
db.update(sql2);
String m;	
m="修改成功";
out.println("<script> alert('"+m+"');window.location.href='aboutus.jsp';</script>");
%>
</body>
</html>