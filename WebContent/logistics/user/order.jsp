<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>用户订单信息</title>
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
String sql="select * from ord where uid='"+uid+"'";
ResultSet rs=db.query(sql);
out.println("<table border=10 solid #CB2A2A>");
out.println("<tr><td><span class='STYLE1'>订单号</span></td><td><span class='STYLE1'>用户id</span></td><td><span class='STYLE1'>用户姓名</span></td><td><span class='STYLE1'>联系电话</span></td><td><span class='STYLE1'>配送地址</span></td><td><span class='STYLE1'>订单状态</span></td><td><span class='STYLE1'>是否已选择配送信息</span></td><td><span class='STYLE1'>配送方式</span></td><td><span class='STYLE1'>自提点</span></td><td><span class='STYLE1'>众包物流时间</span></td></tr>");
while(rs.next())
{
	String oid=rs.getString("oid");
	out.println("<tr><td><span class='STYLE1'>"+rs.getString("oid")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("uid")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("name")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("tel")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("adda")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("nowa")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("whe")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("way")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("get")+"</span></td>");
	out.println("<td><span class='STYLE1'>"+rs.getString("sendtime")+"</span></td>");
	out.println("</tr>");
} 
out.println("</table>");
%>
<p>
</center>
</body>
</html>