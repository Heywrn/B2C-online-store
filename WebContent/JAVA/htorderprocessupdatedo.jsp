<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>订单处理后台管理</title>
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
String yhid=request.getParameter("yhid");
String daifukuan=request.getParameter("daifukuan");
String daishouhuo=request.getParameter("daishouhuo");
String spid=request.getParameter("spid");
String daipingjia=request.getParameter("daipingjia");
String tuikuan=request.getParameter("tuikuan");
yhid=new String(yhid.getBytes("ISO-8859-1"));
daishouhuo=new String(daishouhuo.getBytes("ISO-8859-1"));
daifukuan=new String(daifukuan.getBytes("ISO-8859-1"));
daipingjia=new String(daipingjia.getBytes("ISO-8859-1"));
tuikuan=new String(tuikuan.getBytes("ISO-8859-1"));
String sql1="update orderprocess set yhid='"+yhid+"' where spid='"+spid+"'";
String sql2="update orderprocess set daifukuan='"+daifukuan+"' where spid='"+spid+"'";
String sql3="update orderprocess set daishouhuo='"+daishouhuo+"' where spid='"+spid+"'";
String sql4="update orderprocess set daipingjia='"+daipingjia+"' where spid='"+spid+"'";
String sql5="update orderprocess set tuikuan='"+tuikuan+"' where spid='"+spid+"'";
db.update(sql1);db.update(sql2);db.update(sql3);db.update(sql4);db.update(sql5);
response.sendRedirect("htorderprocess.jsp");
%>
</body>
</html>