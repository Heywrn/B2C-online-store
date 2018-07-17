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
String oid=request.getParameter("oid");
String uid=request.getParameter("uid");
String way=request.getParameter("way");
String get=request.getParameter("get");
String sendtime=request.getParameter("sendtime");
way=new String(way.getBytes("ISO-8859-1"));
if(get!=null)
get=new String(get.getBytes("ISO-8859-1"));
String sql1="update od set way='"+way+"' where oid='"+oid+"'";
String sql2="update od set get='"+get+"' where oid='"+oid+"'";
String sql3="update od set sendtime='"+sendtime+"' where oid='"+oid+"'";
out.println(sql1);
db.update(sql1);
db.update(sql2);
db.update(sql3);
String a;
String m;	
a=",自提点为：";
m="选择成功！您的配送信息为:"+way+a+get;

a=",配送时间为：";
m="选择成功！您的配送信息为:"+way+a+sendtime;
out.println("<script> alert('"+m+"');window.location.href='aboutus.jsp';</script>");
%>
</body>
</html>