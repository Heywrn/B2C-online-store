<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
         <%@page import="java.sql.*,a.DBM" %>
         <%@page import="java.util.Date" %>
         <%@page import="java.text.SimpleDateFormat" %>
         <%@page import="java.util.Calendar"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
DBM db=new DBM();
int a=0;
int c=0,b=0;
Date now=new Date();
String uid=request.getParameter("uid");
String bid=request.getParameter("bid");
String jsrq=request.getParameter("jsrq");
String sql6="select * from mis30d04 where uid='"+uid+"' and hsrq is null";
ResultSet rs6=db.query(sql6);
while(rs6.next())
{
Date jsrq1=rs6.getDate("jsrq");
c=(int)((now.getTime()-jsrq1.getTime())/86400000);
if(c>b)
	b=c;
}
out.println(b);
if(b>60)
{
	out.println("<script> alert('图书借阅时间超过60天');window.location.href='MIS30P01.jsp';</script>");
}
else
{
String sql1="select count(*) from mis30d02 where uid='"+uid+"'";
ResultSet rs1=db.query(sql1);
rs1.next();
String sql2="select count(*) as a from mis30d04 where uid='"+uid+"' and hsrq!=null";
ResultSet rs2=db.query(sql2);
if(rs2.next()) a=rs2.getInt("a");
if(rs1.getInt(1)!=0&&a<=9)
{
String sql3="select * from mis30d03 where bid='"+bid+"'";
ResultSet rs3=db.query(sql3);
if(rs3.next())
{String bstate=rs3.getString("bstate");
if(bstate.equals("1"))
{String sql="insert into mis30d04(uid,bid,jsrq) values('"+uid+"','"+bid+"','"+jsrq+"')";
db.update(sql);
bstate="0";
String sql4="update mis30d03 set bstate='"+bstate+"' where bid='"+bid+"'";
db.update(sql4);
out.println("<script> alert('借阅成功');window.location.href='MIS30P01.jsp';</script>");
}
else
	out.println("<script> alert('该书已借出');window.location.href='MIS30P10.jsp';</script>");
}
else
	out.println("<script> alert('该书不存在');window.location.href='MIS30P10.jsp';</script>");
}
else if(rs1.getInt(1)!=1)
	out.println("<script> alert('用户不存在');window.location.href='MIS30P10.jsp';</script>"); 
else if(a>9)
	out.println("<script> alert('借书数目超过十本');window.location.href='MIS30P10.jsp';</script>");
}%>
</body>
</html>
