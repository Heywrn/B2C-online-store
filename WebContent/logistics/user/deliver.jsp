<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>����������Ϣ</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
body {
	background-color:#544E4E
}
-->
</style>
</head>
<body>
<center>
<%
DBModel db=new DBModel();
int uid=1;
String sql="select * from od where uid='"+uid+"' and way is null";
ResultSet rs=db.query(sql);
out.println("<table border=10 solid #CB2A2A>");
out.println("<tr><td><span class='STYLE1'>������</span></td><td><span class='STYLE1'>�û�id</span></td><td><span class='STYLE1'>���ͷ�ʽ</span></td><td><span class='STYLE1'>�����</span></td><td><span class='STYLE1'>�ڰ�����ʱ��</span></td></tr>");
while(rs.next())
{
	String oid=rs.getString("oid");
	out.println("<tr><td><span class='STYLE1'>"+rs.getString("oid")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("uid")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("way")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("get")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("sendtime")+"</span></td>");
	out.println("<td><span class='STYLE1'><a href=update.jsp?oid="+oid+">ѡ��������Ϣ</a></span></td>");
	out.println("</tr>");
} 
out.println("</table>");
%>
<p>
</center>
</body>
</html>