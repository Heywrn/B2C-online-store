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
��Ʒid��<input type="text" name="spid"><br>

�û�id��<input type="text" name="yhid" value=<%=id %> readonly><br>
��Ʒ������<input type="text" name="spsl"><br>
��Ʒ�۸�<input type="text" name="spzj"><br>
��ַ��<input type="text" name="oaddress"><br>
���ڣ�<input type="text" name="odate"><br>
<input type="submit" value="�ύ">
</form>
</center>
</body>
</html>