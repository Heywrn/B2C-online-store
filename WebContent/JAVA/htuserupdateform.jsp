<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�û���̨����</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center><font face="����" size="6" ><b>�û���̨����</b></font></center><br><br>
<% try{
	 Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e)
{out.println(e.toString());}
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/class","root","123456");
Statement stmt=conn.createStatement();
String id=request.getParameter("id");
 ResultSet rs=stmt.executeQuery("select * from user where id='"+id+"'");                                                                                                                                   
 String name="";String sex="";String password="";String email="";
 if (rs.next()) {name=rs.getString("name");password=rs.getString("password");
        id=rs.getString("id");sex=rs.getString("sex");email=rs.getString("email");}
 %>

<center>
<form action="htuserupdatedo.jsp">
ID�ţ�<input type="text" name="id" value=<%=id %>><p>
  �û�����<input type="text" name="name" value=<%=name %> ><p>
   ���룺<input type="text" name="password" value=<%=password %>><p>
   �Ա�<input type="text" name="sex" value=<%=sex %>><p>
    �����ַ��<input type="text" name="email" value=<%=email %>><p>  
  <input type="submit" value="�ύ">
</form>
</center>
</body>
</html>