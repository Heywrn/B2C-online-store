<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM,java.util.*" %> 
<%@ page import="java.text.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-aaType" content="text/html; charset=GB18030">
<title>���߶�����</title>
<style type="text/css">
<!--
body {
	background-image: url(MIS30.jpg);
}
-->
<% 
String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); //��ȡϵͳʱ�� 
%>
</style></head>
<body>
<center>
<form action="">
<br>
<br>
<br>
</form> 
</center>
<center>
<%
DBM db=new DBM();
String uid=request.getParameter("uid");
String upw=request.getParameter("upw");
if(uid.equals("")||upw.equals(""))
	out.println("<script> alert('��������Ϣ');window.location.href='MIS30P30.jsp';</script>");
int a=0,b=0,c=0;
ResultSet rs=db.query("select * from MIS30D02 where uid='"+uid+"'");
if (rs.next())
{ 
if(!rs.getString("upw").equals(upw))
	out.println("<script> alert('��¼ʧ��');window.location.href='MIS30P30.jsp';</script>");
String sql1="select bid,count(*) as a from mis30d04 WHERE TO_DAYS(NOW()) - TO_DAYS(jsrq) <=2 and uid='"+uid+"'";
String sql2="select bid,count(*) as a from mis30d04 WHERE TO_DAYS(NOW()) - TO_DAYS(jsrq) <=7 and uid='"+uid+"'";
String sql3="select bid,count(*) as a from mis30d04 WHERE uid='"+uid+"'";
ResultSet rs1=db.query(sql1);
if(rs1.next())  a=rs1.getInt("a");
ResultSet rs2=db.query(sql2);
if(rs2.next())  b=rs2.getInt("a");
ResultSet rs3=db.query(sql3);
if(rs3.next())  c=rs3.getInt("a");
out.println("<table border=1>");
out.println("<center>");
out.println("���߶�����ͳ��");
out.println("<tr>");
out.println("<tr><td>���ߺ�</td><td>����ͳ��</td><td>����ͳ��</td><td>����ͳ��</td></tr>");
	out.println("<td>"+uid+"</td>");
	out.println("<td>"+a+"</td>");
	out.println("<td>"+b+"</td>");
	out.println("<td>"+c+"</td>");
	out.println("</tr>");
out.println("</center>");
out.println("</table>");
out.print(datetime);  
out.print("                                 ");
out.print("�����û���");
out.print(uid);
String sql4="update mis30d06 set day='"+a+"' where uid='"+uid+"'";
String sql5="update mis30d06 set week='"+b+"' where uid='"+uid+"'";
String sql6="update mis30d06 set al='"+c+"' where uid='"+uid+"'";
String sql7="update mis30d06 set time='"+datetime+"' where uid='"+uid+"'";
db.update(sql4);
db.update(sql5);
db.update(sql6);
db.update(sql7);
}
%>
</body>
</center>
</html>