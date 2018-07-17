<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e)
{out.println(e.toString());}
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/class?","root","123456");
Statement stmt=conn.createStatement();
String dfk="0";
String dsh="0";
String dpj="0";
String tk="0";
String state="0";
String spid=request.getParameter("spid");
String yhid=request.getParameter("yhid");
String spsl=request.getParameter("spsl");
String spzj=request.getParameter("spzj");
String oaddress=request.getParameter("oaddress");
String odate=request.getParameter("odate");
String sql1="insert into orderinfo(spid,yhid,ostate,spsl,spzj,oaddress,odate) values('"+spid+"','"+yhid+"','"+state+"','"+spsl+"','"+spzj+"','"+oaddress+"','"+odate+"')";
//out.println(sql1);
stmt.executeUpdate(sql1);
stmt.executeUpdate("insert into orderprocess(spid,yhid,daifukuan,daishouhuo,daipingjia,tuikuan) values('"+spid+"','"+yhid+"','"+dfk+"','"+dsh+"','"+dpj+"','"+tk+"')");
response.sendRedirect("buy_success.jsp");
/* response.sendRedirect("main.jsp");  */
%>
</body>
</html>
