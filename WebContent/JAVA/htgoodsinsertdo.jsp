<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>商品后台管理</title>
</head>
<body>
<% try{
	 Class.forName("com.mysql.jdbc.Driver");
 }catch(Exception e)
 {out.println(e.toString());}
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/class?useUnicode=true&characterEncoding=gbk","root","123456");
 Statement stmt=conn.createStatement();
 String id=request.getParameter("id");
 String name=request.getParameter("name");
 String price=request.getParameter("price");
 String classification=request.getParameter("classification");
 String miaoshu=request.getParameter("miaoshu");
 String fuwu=request.getParameter("fuwu");
 String wuliu=request.getParameter("wuliu");
 name=new String(name.getBytes("ISO-8859-1"));
 classification=new String(classification.getBytes("ISO-8859-1"));
 miaoshu=new String(miaoshu.getBytes("ISO-8859-1"));
 fuwu=new String(fuwu.getBytes("ISO-8859-1"));
 wuliu=new String(wuliu.getBytes("ISO-8859-1"));
 String sql="insert into goods(id,name,price,classification,miaoshu,fuwu,wuliu) values('"+id+"','"+name+"','"+price+"','"+classification+"','"+miaoshu+"','"+fuwu+"','"+wuliu+"')";
 stmt.executeUpdate(sql);
 response.sendRedirect("htgoods.jsp");
 %>
</body>
</html>