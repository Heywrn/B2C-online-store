<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>商品后台管理</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center><font face="宋体" size="6" ><b>商品后台管理</b></font></center><br><br>
<% try{
	 Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e)
{out.println(e.toString());}
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/class","root","123456");
Statement stmt=conn.createStatement();
String id=request.getParameter("id");
 ResultSet rs=stmt.executeQuery("select * from goods where id='"+id+"'");                                                                                                                                   
 String name="";String price="";String classification="";String miaoshu="";String fuwu="";String wuliu="";
 if (rs.next()) {name=rs.getString("name");price=rs.getString("price");
        id=rs.getString("id");classification=rs.getString("classification");miaoshu=rs.getString("miaoshu");
        fuwu=rs.getString("fuwu");wuliu=rs.getString("wuliu");}
 %>

<center>
<form action="htgoodsupdatedo.jsp">
ID号：<input type="text" name="id" value=<%=id %>><p>
  商品名：<input type="text" name="name" value=<%=name %> ><p>
   价格：<input type="text" name="price" value=<%=price %>><p>
    类别：<input type="text" name="classification" value=<%=classification %>><p> 
    描述：<input type="text" name="miaoshu" value=<%=miaoshu %>><p>
   服务：<input type="text" name="fuwu" value=<%=fuwu %>><p>
    物流：<input type="text" name="wuliu" value=<%=wuliu %>><p>   
  <input type="submit" value="提交">
</form>
</center>
</body>
</html>