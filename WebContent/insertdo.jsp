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
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/wrn?useUnicode=true&characterEncoding=utf-8","root","123456");
Statement stmt=conn.createStatement();
String sh=request.getParameter("sh");
String sm=request.getParameter("sm");
String zz=request.getParameter("zz");
String cbs=request.getParameter("cbs");
String cbrq=request.getParameter("cbrq");
String jg=request.getParameter("jg");
sm=new String(sm.getBytes("ISO-8859-1"));
cbs=new String(cbs.getBytes("ISO-8859-1"));
zz=new String(zz.getBytes("ISO-8859-1"));
stmt.executeUpdate("insert into book(sh,sm,zz,cbs,cbrq,jg) values('"+sh+"','"+sm+"','"+zz+"','"+cbs+"','"+cbrq+"','"+jg+"')");
response.sendRedirect("8-2.jsp");
%>
</body>
</html>
