<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM,java.util.*" %> 
<%@ page import="java.text.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>ͼ�����</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-image: url(MIS30.jpg);
}
#Layer1 {
	position:absolute;
	width:298px;
	height:194px;
	z-index:1;
	left: 344px;
	top: 119px;
}
.STYLE1 {font-size: xx-large}
-->
<% 
String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); //��ȡϵͳʱ�� 
%>
</style>
<center>
<form action="">
<br>
<br>
<br>
��������ѯ��<input type="text" name="bname">
<input type="submit" value="��ѯ">
</form> 
</center>
<center>
<%
DBM db=new DBM();
String bname="";
if(request.getParameter("bname")!=null&&request.getParameter("bname")!="")
{	
	bname=request.getParameter("bname");
    bname=new String(bname.getBytes("ISO-8859-1"));
}
String sql="select * from mis30d03";
if(bname!="")
	sql="select * from mis30d03 where bname like '%"+bname+"%'";
ResultSet rs=db.query(sql);
out.println("<table border=1>");
out.println("<center>");
out.println("����ͼ����Ϣ");
out.println("<tr><td>���</td><td>����</td><td>������</td><td>״̬</td><td>�����</td><td>�۸�</td></tr>");
while(rs.next())
{
	String bid=rs.getString("bid");
	out.println("<tr><td>"+rs.getString("bid")+"</td>");
	out.println("<td>"+rs.getString("bname")+"</td>");
	out.println("<td>"+rs.getString("bcbs")+"</td>");
	out.println("<td>"+rs.getString("bstate")+"</td>");
	out.println("<td>"+rs.getString("broken")+"</td>");
	out.println("<td>"+rs.getString("bprice")+"</td>");
	out.println("<td><a href=MIS30P05.jsp?bid="+bid+">ɾ��</a></td>");
	out.println("<td><a href=MIS30P06.jsp?bid="+bid+">�޸�</a></td>");
	out.println("</tr>");
} 
out.println("</center>");
out.println("</table>");
out.println(datetime);
%>
<p>
<a href="MIS30P03.jsp">ͼ��¼�� </a>

</center>
</body>
</html>