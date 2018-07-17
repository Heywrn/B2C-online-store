<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=">
<title>订单录入</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
body {
	background-color: #544E4E;
}
.STYLE2 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 18;
}
.STYLE4 {font-size: 18; font-weight: bold; }
-->
</style>
</head>
<body>
<form action="insertdo.jsp">
  <div align="center" class="STYLE1"><br>
<table width="322" border="0">
  <tr bordercolor="#000000">
    <td width="139"><div align="center" class="STYLE4">订单id：</div></td>
    <td width="173"><input name="oid" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">用户id：</div></td>
    <td><input name="uid" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">用户姓名：</div></td>
    <td><input name="name" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">联系电话： </div></td>
    <td><input name="tel" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">配送地址：</div></td>
    <td><input name="adda" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">是否选择配送点： </div></td>
    <td><label>
      <input name="way" type="radio" value="否" checked>
    否 
    <input type="radio" name="way" value="是">
    是
    </label></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">订单状态：</div></td>
    <td><input name="nowa" type="text" value="订单处理中"></td>
  </tr>
  <tr bordercolor="#000000">
    <td colspan="2"><div align="center" class="STYLE2">
      <input name="submit" type="submit" value="提交">
    </div></td>
    </tr>
</table>
</div>
</form>
</body>
</html>