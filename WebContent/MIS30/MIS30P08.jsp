<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ page import="java.util.*,java.text.SimpleDateFormat" %>
     <jsp:directive.page import="java.text.SimpleDateFormat" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>图书借阅</title>
</head>
<style type="text/css">
<!--
body {
	background-image: url(MIS30.jpg);
}
.STYLE2 {font-size: x-large}
-->
<%
SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd");
request.setAttribute("d", s.format(new Date()));
%>
</style>
<table width="581" height="262" border="10" align="center" bordercolor="#999999" bgcolor="#F0F0F0">
  <form name="form1" method="post" action="MIS30P09.jsp">
  <br>
  <br>
  <br>
  <br>
  <tr>
    <td width="187"><div align="center"><span class="STYLE2">用户账号：</span></div></td>
    <td width="384">
      <label>
        <div align="center">
          <input name="uid" type="text" class="STYLE2">
        </div>
      </label>
 </td>
  </tr>
  <tr>
    <td><div align="center"><span class="STYLE2">图书账号：</span></div></td>
    <td><div align="center">
      <input name="bid" type="text" class="STYLE2">
    </div></td>
  </tr>
  <tr>
    <td><div align="center" class="STYLE2">借书日期：</div></td>
    <td>
 <div align="center">
        <input name="jsrq" type="text" class="STYLE2" id="jsrq" value="${requestScope.d} ">
      </div>
  </td>
  </tr>
  <tr>
    <td colspan="2">
      <label>
        <div align="center">
          <input name="Submit" type="submit" class="STYLE2" value="提交">
        </div>
      </label>
 </td>
  </tr>
  </form>
</table>

</html>