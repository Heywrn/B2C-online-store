<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>������̨����</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center>
<font face="����" size="6" ><b>������̨����</b></font>&nbsp;&nbsp;&nbsp;<a href="htorder.jsp">����</a><br><br>
<form action="htorder1.jsp">
���û�����ѯ��<input type="text" name="yhid">
<input type="submit" value="��ѯ">
</form>
<% 
DBM db=new DBM();
String yhid="";
if(request.getParameter("yhid")!=null&&request.getParameter("yhid")!="")
{
yhid=request.getParameter("yhid");
yhid=new String (yhid.getBytes("ISO-8859-1"));
}
String sql="select * from orderinfo";
if(yhid!="")
sql="select * from orderinfo where yhid like '%"+yhid+"%'";
ResultSet rs=db.query(sql);
out.println("<br><table border=1 >");
out.println("<tr><td><center>������<center></td><td><center>����������ID</center></td><td><center>�û���</center></td><td><center>��Ʒ��</center></td><td><center>��Ʒ����</center></td><td><center>��Ʒ�ܼ�</center></td><td><center>�û���ַ</center></td><td><center>������������</center></td><td><center>����</center></td><td><center>����</center></td></tr>");
while(rs.next())
 {
	String oid=rs.getString("oid");
	out.println("<tr><td><center>"+oid+"<center></td>");
	out.println("<td><center>"+rs.getString("oclid")+"</center></td>");
	out.println("<td><center>"+rs.getString("yhid")+"</center></td>");
	out.println("<td><center>"+rs.getString("spid")+"</center></td>");
	out.println("<td><center>"+rs.getString("spsl")+"</center></td>");
	out.println("<td><center>"+rs.getString("spzj")+"</center></td>");
	out.println("<td><center>"+rs.getString("oaddress")+"</center></td>");
	out.println("<td><center>"+rs.getString("odate")+"</center></td>");
	out.println("<td><center><a href=htorderdeletedo.jsp?oid="+oid+">ɾ��</a></center></td>");
	out.println("<td><center><a href=htorderupdateform.jsp?oid="+oid+">�޸�</a></center></td>");
	out.println("</tr>");

} 
out.print("</TABLE>");
%>