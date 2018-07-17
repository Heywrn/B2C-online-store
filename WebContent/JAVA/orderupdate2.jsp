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
String oid=request.getParameter("oid");
String spid=request.getParameter("spid");
String yhid=request.getParameter("yhid");
String daifukuan=request.getParameter("daifukuan");
String daishouhuo=request.getParameter("daishouhuo");
String daipingjia=request.getParameter("daipingjia");
String tuikuan=request.getParameter("tuikuan");
String sql1="update orderprocess set spid='"+spid+"' where oid='"+oid+"'";
String sql2="update orderprocess set daifukuan='"+daifukuan+"' where oid='"+oid+"'";
String sql3="update orderprocess set daishouhuo='"+daishouhuo+"' where oid='"+oid+"'";
String sql4="update orderprocess set daipingjia='"+daipingjia+"' where oid='"+oid+"'";
String sql5="update orderprocess set tuikuan='"+tuikuan+"' where oid='"+oid+"'";
String sql6="update orderprocess set yhid='"+yhid+"' where oid='"+oid+"'";
db.update(sql1);
db.update(sql2);
db.update(sql3);
db.update(sql4);
db.update(sql5);
db.update(sql6);
response.sendRedirect("my.jsp");
%>
</body>
</html>