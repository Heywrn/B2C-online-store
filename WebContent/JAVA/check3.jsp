<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-aaType" content="text/html; charset=GB18030">
<title>��Ϣ�鿴</title>
<style type="text/css">
<!--
body {
	background-color: #FFFFCC;
}
-->
</style></head>
<%
DBM db=new DBM();
String id=request.getParameter("id");
String pw=request.getParameter("password");
ResultSet rs=db.query("select * from user where id='"+id+"'");
String name="";
String em="";
String sex="";
if (rs.next())
{ if(!rs.getString("password").equals(pw))
	response.sendRedirect("update.jsp");
/* un=rs.getString("username"); */
/* pw=rs.getString("password");  */
name=rs.getString("name");  
em=rs.getString("email");  
sex=rs.getString("sex");  
}
%>
<center>
<form method="POST" action="updatedo.jsp">
 id��<input type="text" name="id" value=<%=id %> readonly><p>
������<input type="text" name="name" value=<%=name %>><p>
���룺<input type="text" name="password" value=<%=pw %> ><p>
���䣺<input type="text" name="email" value=<%=em %> ><p>
�Ա�<input type="text" name="sex"  value=<%=sex %>><p>
</form>
</center>
</body>
</html>