<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-aaType" content="text/html; charset=GB18030">
<title>信息查看</title>
<style type="text/css">
<!--
body {
	background-color: #FFFFCC;
}
-->
</style></head>
<%
DBM db=new DBM();
String id=request.getParameter("username");
String pw=request.getParameter("password");
ResultSet rs=db.query("select * from user where id='"+id+"'");
if (rs.next())
{ if(!rs.getString("password").equals(pw))
	response.sendRedirect("update.jsp");
}
%>
<center>
<form action="buydo.jsp">
商品id：<input type="text" name="spid"><br>

用户id：<input type="text" name="yhid" value=<%=id %> readonly><br>
商品数量：<input type="text" name="spsl"><br>
商品价格：<input type="text" name="spzj"><br>
地址：<input type="text" name="oaddress"><br>
日期：<input type="text" name="odate"><br>
<input type="submit" value="提交">
</form>
</center>
</body>
</html>