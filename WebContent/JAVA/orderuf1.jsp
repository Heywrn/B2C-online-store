<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
DBM db=new DBM();
String oid=request.getParameter("oid");
ResultSet rs=db.query("select * from orderinfo where oid='"+oid+"'");
String yhid="";
String spid="";
String spsl="";
String spzj="";
String oaddress="";
String odate="";
if(rs.next())
{
yhid=rs.getString("yhid");
spid=rs.getString("spid");  
spsl=rs.getString("spsl");  
spzj=rs.getString("spzj");  
oaddress=rs.getString("oaddress");  
odate=rs.getString("odate");  
}
%>
<center>
<form action="orderupdate1.jsp">
����id��<input type="text" name="oid" value=<%=oid %> readonly><p>
�û�id��<input type="text" name="yhid" value=<%=yhid %> readonly><p>
��Ʒid��<input type="text" name="spid" value=<%=spid %> readonly><p>
��Ʒ������<input type="text" name="spsl" value=<%=spsl %> ><p>
��Ʒ�ܼۣ�<input type="text" name="spzj" value=<%=spzj %> ><p>
������ַ��<input type="text" name="oaddress"  value=<%=oaddress %>><p>
�������ڣ�<input type="text" name="odate" value=<%=odate %>><p>
<input type="submit" value="�ύ">
</form>
</center>
</body>
</html>