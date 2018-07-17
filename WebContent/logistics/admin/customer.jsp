<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>用户信息</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
body {
	background-color:#544E4E
}
-->
</style>
</head>
<body>
<center>
<%
DBModel db=new DBModel();
int uid=1;
String sql="select * from user";
ResultSet rs=db.query(sql);
out.println("<table border=10 solid #CB2A2A>");
out.println("<tr><td><span class='STYLE1'>用户id</span></td><td><span class='STYLE1'>用户姓名</span></td><td><span class='STYLE1'>性别</span></td><td><span class='STYLE1'>联系电话</span></td><td><span class='STYLE1'>配送地址</span></td></tr>");
while(rs.next())
{
	out.println("<tr><td><span class='STYLE1'>"+rs.getString("id")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("name")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("sex")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("tel")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("add")+"</span></td>");
	out.println("</tr>");
} 
out.println("</table>");
%>
<p>
</center>
</body>
</html>