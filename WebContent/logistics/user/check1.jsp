<%@ page language="java" contentType="text/html; charset=GB18030 "
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<head><title>���ݿ��û���¼��֤</title></head> 
<%
if (request.getParameter("id")!=null && request.getParameter("pw")!=null) 
 { 
 String id=request.getParameter("id"); 
 String strPass=request.getParameter("pw"); 
 String conn="jdbc:mysql://localhost:3306/logistics";
 Class.forName("com.mysql.jdbc.Driver"); 
String strUser="root"; 
String strPassword="123456";  
Connection  conn1=DriverManager.getConnection(conn,strUser,strPassword );
 Statement stat=conn1.createStatement(); 
 String  strSql="SELECT  COUNT(*)  FROM user WHERE id='"+id+"' and pw='"+strPass+"'"; 
 ResultSet result=stat.executeQuery(strSql); 
 result.next(); 
 if (result.getInt(1)==1) 
 { 
session.setAttribute("login","OK"); 
out.println("<script> alert('��¼�ɹ���');window.location.href='aboutus.jsp';</script>");
} 
else 
{  
	out.println("<script> alert('��¼����,��������ȷ���û���������');window.location.href='login.jsp';</script>");
} }  
%> 
</body>
</html>

