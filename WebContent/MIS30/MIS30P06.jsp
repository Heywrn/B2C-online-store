<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*,a.DBM" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>图书信息修改</title>
</head>
<body>
<style type="text/css">
<!--
body {
	background-image: url(MIS30.jpg);
}
#Layer1 {
	position:absolute;
	width:298px;
	height:194px;
	z-index:1;
	left: 344px;
	top: 119px;
}
.STYLE1 {font-size: xx-large}
-->
</style>
<%
DBM db=new DBM();
String  bid=request.getParameter("bid");
ResultSet rs=db.query("select * from mis30d03 where bid='"+bid+"'");
String bname="";
String bprice="";
String bcbs="";
String bstate="";
String broken="";
if(rs.next())
{
bname=rs.getString("bname");
bprice=rs.getString("bprice");  
bcbs=rs.getString("bcbs");  
bstate=rs.getString("bstate"); 
broken=rs.getString("broken");
}
%>
<center>
<form action="MIS30P07.jsp">
<br>
<br>
<br>
<br>
<br>
  <table width="332" height="213" border="10" bordercolor="#999999" bgcolor="#F0F0F0">
    <tr>
      <td><div align="center">书号：</div></td>
      <td><div align="center">
        <input type="text" name="bid" value=<%=bid %> readonly>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">书名：</div></td>
      <td><div align="center">
        <input type="text" name="bname" value=<%=bname %>>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">出版社：</div></td>
      <td><div align="center">
        <input type="text" name="bcbs" value=<%=bcbs %> >
      </div></td>
    </tr>
    <tr>
      <td><div align="center">状态：</div></td>
      <td><div align="center">
        <input type="text" name="bstate"  value=<%=bstate %>>
      </div></td>
    </tr>
        <tr>
      <td><div align="center">损坏情况：</div></td>
      <td><div align="center">
        <input type="text" name="broken"  value=<%=broken %>>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">价格：</div></td>
      <td><div align="center">
        <input type="text" name="bprice" value=<%=bprice %>>
      </div></td>
    </tr>
    <tr>
      <td height="34" colspan="2"><div align="center">
        <input name="submit" type="submit" value="提交">
      </div></td>
      </tr>
  </table>
  </form>
</center>
</body>
</html>