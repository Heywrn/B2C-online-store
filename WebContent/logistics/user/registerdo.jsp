<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%! int id=10; %>
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
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/logistics?useUnicode=true&characterEncoding=utf-8","root","123456");
Statement stmt=conn.createStatement();
String name=request.getParameter("name");
String pw=request.getParameter("pw");
String sex=request.getParameter("sex");
String tel=request.getParameter("tel");
String sql="insert into user(name,pw,sex,tel) values ('"+name+"','"+pw+"','"+sex+"','"+tel+"')";
stmt.executeUpdate(sql);
String m="注册成功！您的id为："+id;
out.println("<script> alert('"+m+"');window.location.href='aboutus.jsp';</script>");
id++;
%>
</body>
</html>
