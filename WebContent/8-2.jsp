<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>主页</title>
</head>
<body>
<form action="">
按书名查询：<input type="text" name="sm">
<input type="submit" value="查询">
</form>
<center>
<%
DBModel db=new DBModel();
String sm="";
if(request.getParameter("sm")!=null&&request.getParameter("sm")!="")
{	
	sm=request.getParameter("sm");
    sm=new String(sm.getBytes("ISO-8859-1"));
}
String sql="select * from book";
if(sm!="")
	sql="select * from book where sm like '%"+sm+"%'";
ResultSet rs=db.query(sql);
out.println("<table border=1>");
out.println("<tr bgcolor=#cc22ff><td>书号</td><td>书名</td><td>作者</td><td>出版社</td><td>出版日期</td><td>价格</td></tr>");
while(rs.next())
{
	String sh=rs.getString("sh");
	out.println("<tr><td>"+rs.getString("sh")+"</td>");
	out.println("<td>"+rs.getString("sm")+"</td>");
	out.println("<td>"+rs.getString("zz")+"</td>");
	out.println("<td>"+rs.getString("cbs")+"</td>");
	out.println("<td>"+rs.getString("cbrq")+"</td>");
	out.println("<td>"+rs.getString("jg")+"</td>");
	out.println("<td><a href=deletedo.jsp?sh="+sh+">删除</a></td>");
	out.println("<td><a href=updateform.jsp?sh="+sh+">修改</a></td>");
	out.println("</tr>");
} 
out.println("</table>");
%>
<p>
<a href="insertform.jsp">图书录入 </a>
</center>
</body>
</html>