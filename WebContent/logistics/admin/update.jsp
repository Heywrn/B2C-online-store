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
ResultSet rs=db.query("select * from ord where oid='"+oid+"'");
String uid="";
String name="";
String tel="";
String adda="";
String nowa="";
String whe="";
String way="";
String get="";
String sendtime="";
if(rs.next())
{
uid=rs.getString("uid");
name=rs.getString("name");
tel=rs.getString("tel");
adda=rs.getString("adda");
nowa=rs.getString("nowa");  
whe=rs.getString("whe");   
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
�û�������<input type="text" name="name" value=<%=name %> readonly><p>
��ϵ��ʽ��<input type="text" name="tel" value=<%=tel %> readonly><p>
���͵�ַ��<input type="text" name="adda" value=<%=adda %> readonly><p>
����״̬��<input type="text" name="nowa" value=<%=nowa %> ><p>
�Ƿ�ѡ��������Ϣ��<input type="text" name="whe" value=<%=whe %>><p>
���ͷ�ʽ��<input type="text" name="way" value=<%=way %> readonly><p>
����㣺<input type="text" name="get"  value=<%=get %> readonly><p>
����ʱ�䣺<input type="text" name="sendtime" value=<%=sendtime %> readonly><p>
  <span class="STYLE1">
  <input type="submit" value="�ύ">
  </span>
</form>
</center>
</body>
</html>