<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
DBModel db=new DBModel();
String sh=request.getParameter("sh");
String sm=request.getParameter("sm");
String zz=request.getParameter("zz");
String cbs=request.getParameter("cbs");
String cbrq=request.getParameter("cbrq");
String jg=request.getParameter("jg");
sm=new String(sm.getBytes("ISO-8859-1"));
zz=new String(zz.getBytes("ISO-8859-1"));
cbs=new String(cbs.getBytes("ISO-8859-1"));
String sql1="update book set sm='"+sm+"' where sh='"+sh+"'";
String sql2="update book set zz='"+zz+"' where sh='"+sh+"'";
String sql3="update book set cbs='"+cbs+"' where sh='"+sh+"'";
String sql4="update book set cbrq='"+cbrq+"' where sh='"+sh+"'";
String sql5="update book set jg='"+jg+"' where sh='"+sh+"'";
//out.println(sql);
db.update(sql1);
db.update(sql2);
db.update(sql3);
db.update(sql4);
db.update(sql5);
response.sendRedirect("8-2.jsp");
%>
</body>
</html>