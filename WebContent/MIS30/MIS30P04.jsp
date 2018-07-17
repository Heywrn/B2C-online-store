<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%! int bid=13; %>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
DBM db=new DBM();
String bname=request.getParameter("bname");
String bprice=request.getParameter("bprice");
String bcbs=request.getParameter("bcbs");
String bstate=request.getParameter("bstate");
bname=new String(bname.getBytes("ISO-8859-1"));
bcbs=new String(bcbs.getBytes("ISO-8859-1")); 
String sql="insert into mis30d03(bid,bname,bcbs,bstate,bprice) values('"+bid+"','"+bname+"','"+bcbs+"','"+bstate+"','"+bprice+"')";
db.update(sql);
bid++;
out.println("<script> alert('录入成功');window.location.href='MIS30P02.jsp';</script>");
%>
</body>
</html>
