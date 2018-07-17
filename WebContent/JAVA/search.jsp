<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>查询</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFFFCC;
}
-->
</style>
<%
DBM db=new DBM();
int i=1;
String name=request.getParameter("name");
session.setAttribute(name, "x");
String sql="select * from goods where name like '%"+name+"%'";
ResultSet rs=db.query(sql);
out.println("<TABLE BORDER='0'>");
while(rs.next()&&i<5)
{
  String tp=rs.getString("tupian");
  String url=rs.getString("url");
  out.println("<td><a href="+url+"><img src="+tp+"></a></td>");
  i++;
}
out.println("<br>");
out.println("<td><a href=searchall.jsp>查看全部</a></td>");
out.print("</TABLE>");
%>
</body>
</html>