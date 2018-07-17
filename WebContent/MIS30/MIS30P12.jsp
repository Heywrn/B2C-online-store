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
int b=0;
double a=0;
float c=0;
Date now=new Date();
String uid=request.getParameter("uid");
String bid=request.getParameter("bid");
String hsrq=request.getParameter("hsrq");
String sh=request.getParameter("sh");//是否损坏
String bstate="1";
if(uid.equals("")||bid.equals(""))
{
	out.println("<script> alert('请输入读者号和书号');window.location.href='MIS30P14.jsp';</script>");
}
if(sh.equals("0"))
{
String sql="SELECT  COUNT(*)  FROM MIS30D04 WHERE uid='"+uid+"' and bid='"+bid+"' and hsrq is null";
ResultSet rs=db.query(sql);
rs.next();
String sql4="select * from mis30d04 where uid='"+uid+"' and bid='"+bid+"' and hsrq is null";
ResultSet rs4=db.query(sql4);
if(rs.getInt(1)==1&&rs4.next())
{
	Date jsrq=rs4.getDate("jsrq");
	b=(int)((now.getTime()-jsrq.getTime())/86400000);
	out.println(b);
	String sql1="update MIS30D04 set hsrq='"+hsrq+"' where uid='"+uid+"' and bid='"+bid+"'";
	db.update(sql1);
	String sql2="update MIS30D03 set bstate='"+bstate+"' where bid='"+bid+"'";
	db.update(sql2);
	String sql3="select * from MIS30D02 where uid='"+uid+"'";
	ResultSet rs3=db.query(sql3);
	if(rs3.next())
	{
	String ustate=rs3.getString("ustate");
	if(b>60&&b<90)
	{
		if(ustate.equals("t"))
			a=(b-60)*0.1;
		else if(ustate.equals("s"))
			a=(b-60)*0.05;
		c=(float)a;
		String m="已超过借书期限，请补交："+c;
		out.println("<script> alert('"+m+"');window.location.href='MIS30P13.jsp';</script>");
	}
	else if(b>90&&b<120)
	{
		if(ustate.equals("t"))
			a=3+(b-90)*0.15;
		else if(ustate.equals("s"))
			a=1.5+(b-90)*0.15;
		c=(float)a;
		String m="已超过借书期限，请补交："+c;
		out.println(c);
		out.println("<script> alert('"+m+"');window.location.href='MIS30P13.jsp';</script>");
	}
	else if(b>120)
	{
		if(ustate.equals("t"))
			a=7.5+(b-120)*0.2;
		else if(ustate.equals("s"))
			a=6+(b-120)*0.25;
		c=(float)a;
		String m="已超过借书期限，请补交："+c;
		out.println(c);
		out.println("<script> alert('"+m+"');window.location.href='MIS30P13.jsp';</script>");
	}
	else if(b<=60)
		out.println("<script> alert('已还书成功');window.location.href='MIS30P13.jsp';</script>");

	}}
else
	out.println("<script> alert('该读者没有借阅此书');window.location.href='MIS30P14.jsp';</script>");
}
else
{
	String sql6="select * from mis30d03 where bid='"+bid+"'";
	ResultSet rs6=db.query(sql6);
	if(rs6.next())
	{
		int d=rs6.getInt("bprice");
		d=d*5;
		String aa="0";
		String mm="请按照原价的5倍赔偿："+d;
		String sql1="update MIS30D04 set hsrq='"+hsrq+"' where uid='"+uid+"' and bid='"+bid+"'";
		db.update(sql1);
		String sql2="update MIS30D03 set broken='"+aa+"' where bid='"+bid+"'";
		String sql3="update MIS30D03 set bstate='"+aa+"' where bid='"+bid+"'";
		db.update(sql2);
		db.update(sql3);
		out.println("<script> alert('"+mm+"');window.location.href='MIS30P14.jsp';</script>");
	}
}
%>
</body>
</html>