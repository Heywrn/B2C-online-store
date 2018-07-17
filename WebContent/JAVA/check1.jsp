<%@ page language="java" contentType="text/html; charset=GB18030 "
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<head><title>数据库用户登录验证</title></head> 
<%
if (request.getParameter("username")!=null && request.getParameter("password")!=null) 
 { 
 String id=request.getParameter("username"); 
 String strPass=request.getParameter("password"); 
 String conn="jdbc:mysql://localhost:3306/class";
 Class.forName("com.mysql.jdbc.Driver"); 
String strUser="root"; 
String strPassword="123456";  
Connection  conn1=DriverManager.getConnection(conn,strUser,strPassword );
 Statement stat=conn1.createStatement(); 
 String  strSql="SELECT  COUNT(*)  FROM user WHERE id='"+id+"' and password='"+strPass+"'"; 
 ResultSet result=stat.executeQuery(strSql); 
 result.next(); 
 if (result.getInt(1)==1) 
 { 
session.setAttribute("login","OK"); 
response.sendRedirect("login_success.jsp");
} 
else 
{  
out.println("<h2>登录错误,请输入正确的用户名和密码</h2>"); 
} }  
%> 
</body>
</html>

