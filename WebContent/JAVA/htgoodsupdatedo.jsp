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
String price=request.getParameter("price");
String classification=request.getParameter("classification");
String miaoshu=request.getParameter("miaoshu");
String fuwu=request.getParameter("fuwu");
String wuliu=request.getParameter("wuliu");
String id=request.getParameter("id");
name=new String(name.getBytes("ISO-8859-1"));
classification=new String(classification.getBytes("ISO-8859-1"));
miaoshu=new String(miaoshu.getBytes("ISO-8859-1"));
fuwu=new String(fuwu.getBytes("ISO-8859-1"));
wuliu=new String(wuliu.getBytes("ISO-8859-1"));
String sql1="update goods set name='"+name+"' where id='"+id+"'";
String sql2="update goods set price='"+price+"' where id='"+id+"'";
String sql4="update goods set classification='"+classification+"' where id='"+id+"'";
String sql5="update goods set miaoshu='"+miaoshu+"' where id='"+id+"'";
String sql6="update goods set fuwu='"+fuwu+"' where id='"+id+"'";
String sql7="update goods set wuliu='"+wuliu+"' where id='"+id+"'";
db.update(sql1);db.update(sql2);db.update(sql4);db.update(sql5);db.update(sql6);db.update(sql7);
response.sendRedirect("htgoods.jsp");
%>
</body>
</html>