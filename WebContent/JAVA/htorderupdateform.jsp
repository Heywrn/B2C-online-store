<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>订单后台管理</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center><font face="宋体" size="6" ><b>订单后台管理</b></font></center><br><br>
<% try{
	 Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e)
{out.println(e.toString());}
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/class","root","123456");
Statement stmt=conn.createStatement();
String oid=request.getParameter("oid");
 ResultSet rs=stmt.executeQuery("select * from orderinfo where oid='"+oid+"'");                                                                                                                                   
   String oclid="";String yhid="";String spid="";
 String spsl="";String spzj="";String oaddress="";String odate="";
 if (rs.next()) {oid=rs.getString("oid");oclid=rs.getString("oclid");
              spid=rs.getString("spid");yhid=rs.getString("yhid");spsl=rs.getString("spsl");
              spzj=rs.getString("spzj");oaddress=rs.getString("oaddress");odate=rs.getString("odate");}
 %>

<center>
<form action="htorderupdatedo.jsp">
  订单ID号：<input type="text" name="oid" value=<%=oid %> ><p>
  订购处理人ID号：<input type="text" name="oclid" value=<%=oclid %> ><p>
    用户ID号：<input type="text" name="yhid" value=<%=yhid %> ><p>
     商品ID号：<input type="text" name="spid" value=<%=spid %> ><p>
   商品数量：<input type="text" name="spsl" value=<%=spsl %>><p>
   商品总价：<input type="text" name="spzj" value=<%=spzj %>><p>
    订单接受者地址：<input type="text" name="oaddress" value=<%=oaddress %>><p>  
     订单产生日期：<input type="text" name="odate" value=<%=odate %> ><p>
  <input type="submit" value="提交">
</form>
</center>
</body>
</html>