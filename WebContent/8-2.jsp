<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��ҳ</title>
</head>
<body>
<form action="">
��������ѯ��<input type="text" name="sm">
<input type="submit" value="��ѯ">
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
out.println("<tr bgcolor=#cc22ff><td>���</td><td>����</td><td>����</td><td>������</td><td>��������</td><td>�۸�</td></tr>");
while(rs.next())
{
	String sh=rs.getString("sh");
	out.println("<tr><td>"+rs.getString("sh")+"</td>");
	out.println("<td>"+rs.getString("sm")+"</td>");
	out.println("<td>"+rs.getString("zz")+"</td>");
	out.println("<td>"+rs.getString("cbs")+"</td>");
	out.println("<td>"+rs.getString("cbrq")+"</td>");
	out.println("<td>"+rs.getString("jg")+"</td>");
	out.println("<td><a href=deletedo.jsp?sh="+sh+">ɾ��</a></td>");
	out.println("<td><a href=updateform.jsp?sh="+sh+">�޸�</a></td>");
	out.println("</tr>");
} 
out.println("</table>");
%>
<p>
<a href="insertform.jsp">ͼ��¼�� </a>
</center>
</body>
</html>