<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>管理员后台管理</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center>
<font face="宋体" size="6" ><b>管理员后台管理</b></font>&nbsp;&nbsp;&nbsp;<a href="htadminmain.jsp">返回</a><br><br>
<form action="">
按管理员名查询：<input type="text" name="name">
<input type="submit" value="查询">
</form>
<%
DBM db=new DBM();
String name="";
if(request.getParameter("name")!=null&&request.getParameter("name")!="")
{
	name=request.getParameter("name");
	name=new String (name.getBytes("ISO-8859-1"));
}
String sql="select * from admin";
if(name!="")
sql="select * from admin where name like '%"+name+"%'";
ResultSet rs=db.query(sql);
out.println("<br><table border=1 >");
out.println("<tr><td><center>ID号</center></td><td><center>用户名</center></td><td><center>密码</center></td><td><center>操作</center></td><td><center>操作</center></td></tr>");
while(rs.next())
{
	String id=rs.getString("id");
	out.println("<tr><td><center>"+id+"</center></td>");
	out.println("<td><center>"+rs.getString("name")+"</center></td>");
	out.println("<td><center>"+rs.getString("password")+"</center></td>");
	out.println("<td><center><a href=htadmindeletedo.jsp?id="+id+">删除</a></center></td>");
	out.println("<td><center><a href=htadminupdateform.jsp?id="+id+">密码重置</a></center></td>");
	out.println("</tr>");
}
out.println("</table>");
%>
<p>
<a href="htadmininsertform.jsp">添加管理员记录</a>
</center>
</body>
</html>