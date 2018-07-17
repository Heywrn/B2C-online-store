<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e)
{out.println(e.toString());}
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/class?useUnicode=true&characterEncoding=utf-8","root","123456");
Statement stmt=conn.createStatement();
String id=request.getParameter("id");
String username=request.getParameter("name");
String password=request.getParameter("password");
String em=request.getParameter("em");
String sex=request.getParameter("sex");
String sql="insert into user(id,name,password,sex,email) values ('"+id+"','"+username+"','"+password+"','"+sex+"','"+em+"')";
stmt.executeUpdate(sql);
response.sendRedirect("registers.jsp");
%>
</body>
</html>
