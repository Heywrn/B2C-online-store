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
int PageSize = 5; //ÿҳ��ʾ2����¼
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
	//���������
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
	if(totalrecord % PageSize ==0)// ����ǵ�ǰҳ���������
		totalPage = totalrecord / PageSize; 
	else  // �����󻹿���һҳ
		totalPage = (int) Math.floor( totalrecord / PageSize ) + 1; 
	if(totalPage == 0) totalPage = 1;
	if(request.getParameter("Page")==null || request.getParameter("Page").equals(""))
		Page = 1;
	else
	try {
		Page = Integer.parseInt(request.getParameter("Page"));
	}
    catch(java.lang.NumberFormatException e){
		// �����û����������ַ��ֱ������Page=sdfsdfsdf����ɵ��쳣
		Page = 1;
	}
	if(Page < 1)  Page = 1;
	if(Page > totalPage) Page = totalPage;
	rs0.absolute((Page-1) * PageSize + 1);
	//ResultSet rs1=stmt.executeQuery("select * from orderinfo where yhid='"+id+"'");
	out.print("�����踶����Ϊ��");
	out.println(a);
	out.print("<TABLE BORDER='1'>");
	out.println("<tr><td>�û�id</td><td>����id</td><td>��Ʒid</td><td>����״̬</td><td>��Ʒ���� </td><td>��Ʒ�ܼ�</td><td>������ַ</td><td>��������</td></tr>");
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
		out.println("<td><a href=deletedo2.jsp?oid="+oid+">ɾ��</a></td>");
		out.println("<td><a href=orderuf1.jsp?oid="+oid+">�޸�</a></td>");
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
  <A HREF=fenye1.jsp?Page=1&id=<%=id %>&password=<%=pw %>>��һҳ</A>
  <A HREF=fenye1.jsp?Page=<%=Page-1 %>&id=<%=id %>&password=<%=pw %>>��һҳ</A>
<% }%> 
<%if(Page != totalPage) { %> 
<A HREF=fenye1.jsp?Page=<%=Page+1 %>&id=<%=id %>&password=<%=pw %>>��һҳ</A>
<A HREF=fenye1.jsp?Page=<%=totalPage%>&id=<%=id %>&password=<%=pw %>>���һҳ</A>
<%
   }
%>
<FORM Method="GET">
<BR>����ҳ����<input TYPE="TEXT" Name="Page" SIZE="3"> 
ҳ��:<font COLOR="Red"><%=Page%>/<%=totalPage%></font>
<input type="hidden" name="id" value=<%=id %>>
<input type="hidden" name="password" value=<%=pw %>>
<input type="submit" value="go"> 
</FORM>