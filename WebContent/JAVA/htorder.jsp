<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>������̨����</title>
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
<font face="����" size="6" ><b>������̨����</b></font>&nbsp;&nbsp;&nbsp;<a href="htordermain.jsp">����</a><br><br>
<form action="htorder1.jsp">

���û�����ѯ��<input type="text" name="yhid">


<input type="submit" value="��ѯ">
</form>
<% 
DBM db=new DBM();
String yhid="";
if(request.getParameter("yhid")!=null&&request.getParameter("yhid")!="")
{
yhid=request.getParameter("yhid");
yhid=new String (yhid.getBytes("ISO-8859-1"));
}
String sql="select * from orderinfo";
if(yhid!="")
sql="select * from orderinfo where yhid like '%"+yhid+"%'";
ResultSet rs1=db.query(sql);
%>
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
	//���������
	strSQL = "SELECT count(*) as recordcount FROM orderinfo";
	rs = stmt.executeQuery(strSQL);
	if (rs.next()) totalrecord = rs.getInt("recordcount");
	//�����¼
	strSQL = "SELECT * FROM orderinfo";
    rs = stmt.executeQuery(strSQL);
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
	rs.absolute((Page-1) * PageSize + 1);
	//ResultSet rs1=stmt.executeQuery("select * from orderinfo where yhid='"+id+"'");
	
out.println("<br><table border=1 >");
out.println("<tr><td><center>������<center></td><td><center>�û���</center></td><td><center>��Ʒ��</center></td><td><center>��Ʒ����</center></td><td><center>��Ʒ�ܼ�</center></td><td><center>�û���ַ</center></td><td><center>������������</center></td><td><center>����</center></td><td><center>����</center></td></tr>");
for(int iPage=1; iPage<=PageSize; iPage++)
 {
	String oid=rs.getString("oid");
	out.println("<tr><td><center>"+oid+"<center></td>");
	//out.println("<td><center>"+rs.getString("oclid")+"</center></td>");
	out.println("<td><center>"+rs.getString("yhid")+"</center></td>");
	out.println("<td><center>"+rs.getString("spid")+"</center></td>");
	out.println("<td><center>"+rs.getString("spsl")+"</center></td>");
	out.println("<td><center>"+rs.getString("spzj")+"</center></td>");
	out.println("<td><center>"+rs.getString("oaddress")+"</center></td>");
	out.println("<td><center>"+rs.getString("odate")+"</center></td>");
	out.println("<td><center><a href=htorderdeletedo.jsp?oid="+oid+">ɾ��</a></center></td>");
	out.println("<td><center><a href=htorderupdateform.jsp?oid="+oid+">�޸�</a></center></td>");
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
<FORM Action="htorder.jsp" Method="GET">
<% 
   if(Page != 1) {
      out.print("   <A HREF=htorder.jsp?Page=1>��һҳ</A>");
      out.print("   <A HREF=htorder.jsp?Page=" + (Page-1) + ">��һҳ</A>");
   }
   if(Page != totalPage) {
      out.print("   <A HREF=htorder.jsp?Page=" + (Page+1) + ">��һҳ</A>");
      out.print("   <A HREF=htorder.jsp?Page=" + totalPage + ">���һҳ</A>");
   }
%>
<BR><br>����ҳ����<input TYPE="TEXT" Name="Page" SIZE="3"> 
  ҳ��:<font COLOR="Red"><%=Page%>/<%=totalPage%></font> 
  <input type="submit" value="go">
</FORM>
</center>
</body>
</html>