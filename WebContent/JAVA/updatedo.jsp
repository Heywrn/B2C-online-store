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
String id=request.getParameter("id");
String pw=request.getParameter("password");
String name=request.getParameter("name");
String em=request.getParameter("email");
String sex=request.getParameter("sex");
String sql1="update user set password='"+pw+"' where id='"+id+"'";
String sql2="update user set name='"+name+"' where id='"+id+"'";
String sql3="update user set email='"+em+"' where id='"+id+"'";
String sql4="update user set sex='"+sex+"' where id='"+id+"'";
//out.println(sql);
db.update(sql1);
db.update(sql2);
db.update(sql3);
db.update(sql4);
response.sendRedirect("myright.jsp");
%>
</body>
</html>