<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=">
<title>Insert title here</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
body {
	background-color: #544E4E;
}
-->
</style>
</head>
<body>
<%
DBModel db=new DBModel();
String oid=request.getParameter("oid");
ResultSet rs=db.query("select * from od where oid='"+oid+"'");
String uid="";
String way="";
String get="";
String sendtime="";

if(rs.next())
{
uid=rs.getString("uid");
way=rs.getString("way");  
get=rs.getString("get");  
sendtime=rs.getString("sendtime");   
}
%>
<center>
<form action="updatedo.jsp">
<span class="STYLE1">�����ţ�
<input type="text" name="oid" value=<%=oid %> readonly>
</span>
<p class="STYLE1">
�û�id��<input type="text" name="uid" value=<%=uid %> readonly><p class="STYLE1">
���ͷ�ʽ��  <label>  <input type="radio" name="way" value="����">  </label>
����   <label><input type="radio" name="way" value="�ڰ�����"></label>�ڰ�����
<p class="STYLE1">
����㣺  <label>  <input type="radio" name="get" value="�����ܱ߳���">  </label>
  �����ܱ߳���   <label>  <input type="radio" name="get" value="�չ�����">
  �չ�����</label><p class="STYLE1">  <label>  <input type="radio" name="get" value="����վ">
  ����վ    <input type="radio" name="get" value="����">  </label>
  ����<p class="STYLE1">
����ʱ�䣺
  <label>  <input type="text" name="sendtime">  </label>

<p>
  <span class="STYLE1">
  <input type="submit" value="�ύ">
  </span>
</form>
</center>
</body>
</html>