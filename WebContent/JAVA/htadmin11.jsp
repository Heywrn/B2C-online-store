<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>超级管理员管理</title>
</head>
<body>
<%String name=request.getParameter("name");
String password=request.getParameter("password");
if(name.equals("admin")&&password.equals("admin"))
 response.sendRedirect("htadmin.jsp");
 else
 response.sendRedirect("htadmin1.jsp");
%>
</body>
</html>