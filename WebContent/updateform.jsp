<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
DBModel db=new DBModel();
String sh=request.getParameter("sh");
ResultSet rs=db.query("select * from book where sh='"+sh+"'");
String sm="";
String zz="";
String cbs="";
String cbrq="";
String jg="";
if(rs.next())
{
sm=rs.getString("sm");
zz=rs.getString("zz");  
cbs=rs.getString("cbs");  
cbrq=rs.getString("cbrq");  
jg=rs.getString("jg");  
}
%>
<center>
<form action="updatedo.jsp">
  书号：<input type="text" name="sh" value=<%=sh %> readonly><p>
书名：<input type="text" name="sm" value=<%=sm %>><p>
作者：<input type="text" name="zz" value=<%=zz %> ><p>
出版日期：<input type="text" name="cbrq" value=<%=cbrq %> ><p>
出版社：<input type="text" name="cbs"  value=<%=cbs %>><p>
价格：<input type="text" name="jg" value=<%=jg %>><p>
<input type="submit" value="提交">
</form>
</center>
</body>
</html>