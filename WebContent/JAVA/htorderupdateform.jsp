<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>������̨����</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center><font face="����" size="6" ><b>������̨����</b></font></center><br><br>
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
  ����ID�ţ�<input type="text" name="oid" value=<%=oid %> ><p>
  ����������ID�ţ�<input type="text" name="oclid" value=<%=oclid %> ><p>
    �û�ID�ţ�<input type="text" name="yhid" value=<%=yhid %> ><p>
     ��ƷID�ţ�<input type="text" name="spid" value=<%=spid %> ><p>
   ��Ʒ������<input type="text" name="spsl" value=<%=spsl %>><p>
   ��Ʒ�ܼۣ�<input type="text" name="spzj" value=<%=spzj %>><p>
    ���������ߵ�ַ��<input type="text" name="oaddress" value=<%=oaddress %>><p>  
     �����������ڣ�<input type="text" name="odate" value=<%=odate %> ><p>
  <input type="submit" value="�ύ">
</form>
</center>
</body>
</html>