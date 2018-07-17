<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%>
<HTML>
<BODY>
<style>
<!--
body {
	background-color: #FFFFCC;
}
-->
</style></head>
<%
String id=request.getParameter("id");
String pw=request.getParameter("password");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String strSQL = "";
String state="0";
int PageSize = 5; //每页显示2条记录
int Page = 1;
int totalPage = 1;
int totalrecord = 0;
int a=0;
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
	rs=stmt.executeQuery("select * from user where id='"+id+"'");
	// rs0=stmt.executeQuery("select * from orderinfo where yhid='"+id+"'");
if (rs.next())
{ if(!rs.getString("password").equals(pw))
	response.sendRedirect("myorder.jsp");
	strSQL = "SELECT count(*) as recordcount FROM orderinfo where yhid='"+id+"'";
	ResultSet rs0=stmt.executeQuery(strSQL);
	if (rs0.next()) totalrecord=rs0.getInt("recordcount");
	strSQL="Select sum(spzj) as total from orderinfo where ostate='"+state+"'&&yhid='"+id+"'";
	rs0=stmt.executeQuery(strSQL);
	System.out.println(strSQL);
	if (rs0.next()) a=rs0.getInt("total");
	strSQL = "SELECT * FROM orderinfo where yhid='"+id+"'";
    rs0 = stmt.executeQuery(strSQL);
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
	rs0.absolute((Page-1) * PageSize + 1);
	//ResultSet rs1=stmt.executeQuery("select * from orderinfo where yhid='"+id+"'");
	out.print("您所需付款金额为：");
	out.println(a);
	out.print("<TABLE BORDER='1'>");
	out.println("<tr><td>用户id</td><td>订单id</td><td>商品id</td><td>付款状态</td><td>商品数量 </td><td>商品总价</td><td>订单地址</td><td>订单日期</td></tr>");
	for(int iPage=1; iPage<=PageSize; iPage++)
	{
		String oid=rs0.getString("oid");
		out.println("<tr><td>"+rs0.getString("yhid")+"</td>");
		out.println("<td>"+rs0.getString("oid")+"</td>");
		out.println("<td>"+rs0.getString("spid")+"</td>");
		out.println("<td>"+rs0.getString("ostate")+"</td>");
		out.println("<td>"+rs0.getString("spsl")+"</td>");
		out.println("<td>"+rs0.getString("spzj")+"</td>");
		out.println("<td>"+rs0.getString("oaddress")+"</td>");
		out.println("<td>"+rs0.getString("odate")+"</td>");
		out.println("<td><a href=deletedo2.jsp?oid="+oid+">删除</a></td>");
		out.println("<td><a href=orderuf1.jsp?oid="+oid+">修改</a></td>");
		out.println("</tr>");
		if(!rs0.next()) break;
	}
	out.print("</TABLE>");
}}
catch(SQLException e){
	System.out.println(e.getMessage());
}
finally{
	stmt.close();
	conn.close();
}
%>
<%
if(Page != 1) {
%>
  <A HREF=fenye1.jsp?Page=1&id=<%=id %>&password=<%=pw %>>第一页</A>
  <A HREF=fenye1.jsp?Page=<%=Page-1 %>&id=<%=id %>&password=<%=pw %>>上一页</A>
<% }%> 
<%if(Page != totalPage) { %> 
<A HREF=fenye1.jsp?Page=<%=Page+1 %>&id=<%=id %>&password=<%=pw %>>下一页</A>
<A HREF=fenye1.jsp?Page=<%=totalPage%>&id=<%=id %>&password=<%=pw %>>最后一页</A>
<%
   }
%>
<FORM Method="GET">
<BR>输入页数：<input TYPE="TEXT" Name="Page" SIZE="3"> 
页数:<font COLOR="Red"><%=Page%>/<%=totalPage%></font>
<input type="hidden" name="id" value=<%=id %>>
<input type="hidden" name="password" value=<%=pw %>>
<input type="submit" value="go"> 
</FORM>