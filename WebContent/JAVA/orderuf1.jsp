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
订单id：<input type="text" name="oid" value=<%=oid %> readonly><p>
用户id：<input type="text" name="yhid" value=<%=yhid %> readonly><p>
商品id：<input type="text" name="spid" value=<%=spid %> readonly><p>
商品数量：<input type="text" name="spsl" value=<%=spsl %> ><p>
商品总价：<input type="text" name="spzj" value=<%=spzj %> ><p>
订单地址：<input type="text" name="oaddress"  value=<%=oaddress %>><p>
订单日期：<input type="text" name="odate" value=<%=odate %>><p>
<input type="submit" value="提交">
</form>
</center>
</body>
</html>