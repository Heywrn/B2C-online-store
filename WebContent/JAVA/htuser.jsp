<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>用户后台管理</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
<center>
<font face="宋体" size="6" ><b>用户后台管理</b></font>&nbsp;&nbsp;&nbsp;<a href="htadminmain.jsp">返回</a><br><br>
<form action="">
按用户名查询：<input type="text" name="name">
<input type="submit" value="查询">
</form>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String strSQL = "";
int PageSize = 5; 
int Page = 1;
int totalPage = 1;
int totalrecord = 0;
try
{
	Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e)
{out.println(e.toString());}
try{
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/class","root","123456");
	stmt=conn.createStatement(
		ResultSet.TYPE_SCROLL_INSENSITIVE,
		ResultSet.CONCUR_READ_ONLY);
	//算出总行数
	strSQL = "SELECT count(*) as recordcount FROM user";
	rs = stmt.executeQuery(strSQL);
	if (rs.next()) totalrecord = rs.getInt("recordcount");
	//输出记录
	strSQL = "SELECT * FROM user";
    rs = stmt.executeQuery(strSQL);
	if(totalrecord % PageSize ==0)// 如果是当前页码的整数倍
		totalPage = totalrecord / PageSize; 
	else  // 如果最后还空余一页
		totalPage = (int) Math.floor( totalrecord / PageSize ) + 1; 
	if(totalPage == 0) totalPage = 1;
	if(request.getParameter("Page")==null || request.getParameter("Page").equals(""))
		Page = 1;
	else
	try {
		Page = Integer.parseInt(request.getParameter("Page"));
	}
    catch(java.lang.NumberFormatException e){
		// 捕获用户从浏览器地址拦直接输入Page=sdfsdfsdf所造成的异常
		Page = 1;
	}
	if(Page < 1)  Page = 1;
	if(Page > totalPage) Page = totalPage;
	rs.absolute((Page-1) * PageSize + 1);
	//ResultSet rs1=stmt.executeQuery("select * from orderinfo where yhid='"+id+"'");
	
out.println("<br><table border=1 >");
out.println("<tr><td>ID号</td><td><center>用户名</center></td><td><center>密码</center></td><td><center>性别</center></td><td><center>邮箱地址</center></td><td><center>操作</center></td><td><center>操作</center></td</tr>");
for(int iPage=1; iPage<=PageSize; iPage++)
{
	String id=rs.getString("id");
	out.println("<tr><td><center>"+id+"</center></td>");
	out.println("<td><center>"+rs.getString("name")+"</center></td>");
	out.println("<td><center>"+rs.getString("password")+"</center></td>");
	out.println("<td><center>"+rs.getString("sex")+"</center></td>");
	out.println("<td><center>"+rs.getString("email")+"</center></td>");
	out.println("<td><center><a href=htuserdeletedo.jsp?id="+id+">删除</a></center></td>");
	out.println("<td><center><a href=htuserupdateform.jsp?id="+id+">修改</a></center></td>");
	out.println("</tr>");
	if(!rs.next()) break;
} 
out.print("</TABLE>");
}
catch(SQLException e){
	System.out.println(e.getMessage());
}
finally{
	stmt.close();
	conn.close();
}
%>
<br><br>
<FORM Action="htuser.jsp" Method="GET">
<% 
   if(Page != 1) {
      out.print("   <A HREF=htuser.jsp?Page=1>第一页</A>");
      out.print("   <A HREF=htuser.jsp?Page=" + (Page-1) + ">上一页</A>");
   }
   if(Page != totalPage) {
      out.print("   <A HREF=htuser.jsp?Page=" + (Page+1) + ">下一页</A>");
      out.print("   <A HREF=htuser.jsp?Page=" + totalPage + ">最后一页</A>");
   }
%>
<BR><br>输入页数：<input TYPE="TEXT" Name="Page" SIZE="3"> 
  页数:<font COLOR="Red"><%=Page%>/<%=totalPage%></font> 
  <input type="submit" value="go">
</FORM><p>

</center>
</body>
</html>