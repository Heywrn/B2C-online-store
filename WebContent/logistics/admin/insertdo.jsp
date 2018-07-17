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
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/logistics?useUnicode=true&characterEncoding=utf-8","root","123456");
Statement stmt=conn.createStatement();
String oid=request.getParameter("oid");
String uid=request.getParameter("uid");
String name=request.getParameter("name");
String tel=request.getParameter("tel");
String adda=request.getParameter("adda");
String whe="否";
String nowa="订单处理中";
name=new String(name.getBytes("ISO-8859-1"));
adda=new String(adda.getBytes("ISO-8859-1"));
String sql="insert into ord(oid,uid,name,tel,adda,whe,nowa) values('"+oid+"','"+uid+"','"+name+"','"+tel+"','"+adda+"','"+whe+"','"+nowa+"')";
out.println(sql);
stmt.executeUpdate(sql);
String m;	
m="修改成功";
out.println("<script> alert('"+m+"');window.location.href='aboutus.jsp';</script>");
%>
</body>
</html>
