<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
用户名：<input type="text" name="xm"><br>
密码：<input type="password" name="mm"><br>
<input type="submit" value="提交"><br>
</form>
<hr width="50%" color="red" align="left">
<%
//request.setCharacterEncoding("gbk");
String name=request.getParameter("xm");
String pass=request.getParameter("mm");
if(name!=null)
{
name=new String(name.getBytes("ISO-8859-1"));
if(name.equals("王若楠")&&pass.equals("asd12345"))
	response.sendRedirect("1-1.jsp");
else
	response.sendRedirect("1-2.jsp");
}
%>
</body>
</html>