<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>订单处理后台管理</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center><font face="宋体" size="6" ><b>订单处理后台管理</b></font></center><br><br>
<% try{
	 Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e)
{out.println(e.toString());}
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/class","root","123456");
Statement stmt=conn.createStatement();
String oid=request.getParameter("oid");
 ResultSet rs=stmt.executeQuery("select * from orderprocess where oid='"+oid+"'");                                                                                                                                   
 String spid="";String yhid="";String daifukuan="";String daipingjia="";String daishouhuo="";String tuikuan="";
 if (rs.next()) {yhid=rs.getString("yhid");daifukuan=rs.getString("daifukuan");
        daishouhuo=rs.getString("daishouhuo");daipingjia=rs.getString("daipingjia");
        spid=rs.getString("spid");tuikuan=rs.getString("tuikuan");oid=rs.getString("oid");}
 %>

<center>
<form action="htorderprocessupdatedo.jsp">
订单号：<input type="text" name="oid" value=<%=oid %>><p>
商品ID号：<input type="text" name="spid" value=<%=spid %>><p>
  用户ID：<input type="text" name="yhid" value=<%=yhid %> ><p>
   待付款：<input type="text" name="daifukuan" value=<%=daifukuan %>><p>
   待收货：<input type="text" name="daishouhuo" value=<%=daishouhuo %>><p>
   待评价：<input type="text" name="daipingjia" value=<%=daipingjia %>><p>  
退款：<input type="text" name="tuikuan" value=<%=tuikuan %>><p>  
  <input type="submit" value="提交">
</form>
</center>
</body>
</html>