<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>���������̨����</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center><font face="����" size="6" ><b>�û���̨����</b></font></center><br><br>
<% try{
	 Class.forName("com.mysql.jdbc.Driver");
 }catch(Exception e)
 {out.println(e.toString());}
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/class","root","123456");
 Statement stmt=conn.createStatement();
 String oid=request.getParameter("oid");
 String sql="delete from orderprocess where oid='"+oid+"'";
 stmt.executeUpdate(sql);
 response.sendRedirect("htorderprocess.jsp");
 %>
</body>
</html>