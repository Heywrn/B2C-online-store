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
<form action="">
按用户名查询：<input type="text" name="yhid">
<input type="submit" value="查询">
</form>
<% DBM db=new DBM();
	String yhid="";
if(request.getParameter("yhid")!=null&&request.getParameter("yhid")!="")
{
	yhid=request.getParameter("yhid");
	yhid=new String (yhid.getBytes("ISO-8859-1"));
}
String sql="select * from orderinfo";
if(yhid!="")
sql="select * from orderinfo where yhid like '%"+yhid+"%'";
ResultSet rs1=db.query(sql);
%>
</body>
</html>