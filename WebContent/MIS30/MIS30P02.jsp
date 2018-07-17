<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM,java.util.*" %> 
<%@ page import="java.text.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>图书管理</title>
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
String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); //获取系统时间 
%>
</style>
<center>
<form action="">
<br>
<br>
<br>
按书名查询：<input type="text" name="bname">
<input type="submit" value="查询">
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
out.println("所有图书信息");
out.println("<tr><td>书号</td><td>书名</td><td>出版社</td><td>状态</td><td>损坏情况</td><td>价格</td></tr>");
while(rs.next())
{
	String bid=rs.getString("bid");
	out.println("<tr><td>"+rs.getString("bid")+"</td>");
	out.println("<td>"+rs.getString("bname")+"</td>");
	out.println("<td>"+rs.getString("bcbs")+"</td>");
	out.println("<td>"+rs.getString("bstate")+"</td>");
	out.println("<td>"+rs.getString("broken")+"</td>");
	out.println("<td>"+rs.getString("bprice")+"</td>");
	out.println("<td><a href=MIS30P05.jsp?bid="+bid+">删除</a></td>");
	out.println("<td><a href=MIS30P06.jsp?bid="+bid+">修改</a></td>");
	out.println("</tr>");
} 
out.println("</center>");
out.println("</table>");
out.println(datetime);
%>
<p>
<a href="MIS30P03.jsp">图书录入 </a>

</center>
</body>
</html>