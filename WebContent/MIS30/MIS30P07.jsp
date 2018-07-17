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
String bid=request.getParameter("bid");
String bname=request.getParameter("bname");
String bstate=request.getParameter("bstate");
String bcbs=request.getParameter("bcbs");
String broken=request.getParameter("broken");
String bprice=request.getParameter("bprice");
bname=new String(bname.getBytes("ISO-8859-1"));
bcbs=new String(bcbs.getBytes("ISO-8859-1"));
String sql1="update mis30d03 set bname='"+bname+"' where bid='"+bid+"'";
String sql2="update mis30d03 set bprice='"+bprice+"' where bid='"+bid+"'";
String sql3="update mis30d03 set bcbs='"+bcbs+"' where bid='"+bid+"'";
String sql4="update mis30d03 set bstate='"+bstate+"' where bid='"+bid+"'";
String sql5="update mis30d03 set bstate='"+broken+"' where bid='"+bid+"'";
//out.println(sql);
db.update(sql1);
db.update(sql2);
db.update(sql3);
db.update(sql4);
out.println("<script> alert('修改成功');window.location.href='MIS30P02.jsp';</script>");
%>
</body>
</html>