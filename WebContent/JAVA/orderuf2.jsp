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
ResultSet rs=db.query("select * from orderprocess where oid='"+oid+"'");
String yhid="";
String spid="";
String daifukuan="";
String daishouhuo="";
String daipingjia="";
String tuikuan="";
if(rs.next())
{
yhid=rs.getString("yhid");
spid=rs.getString("spid");  
daifukuan=rs.getString("daifukuan");  
daishouhuo=rs.getString("daishouhuo");  
daipingjia=rs.getString("daipingjia");  
tuikuan=rs.getString("tuikuan");  
}
%>
<center>
<form action="orderupdate2.jsp">
����id��<input type="text" name="oid" value=<%=oid %> readonly><p>
�û�id��<input type="text" name="yhid" value=<%=yhid %> readonly><p>
��Ʒid��<input type="text" name="spid" value=<%=spid %> readonly><p>
�����<input type="text" name="daifukuan" value=<%=daifukuan %> ><p>
���ջ���<input type="text" name="daishouhuo" value=<%=daishouhuo %> ><p>
�����ۣ�<input type="text" name="daipingjia"  value=<%=daipingjia %>><p>
�˿<input type="text" name="tuikuan" value=<%=tuikuan %>><p>
<input type="submit" value="�ύ">
</form>
</center>
</body>
</html>