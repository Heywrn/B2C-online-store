<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>图书录入</title>
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
<form action="MIS30P04.jsp">
<br>
<br>
<br>
<br>
<br>
  <table width="360" border="10" align="center" bordercolor="#999999" bgcolor="#F0F0F0">
    <tr>
      <td width="127"><div align="center">书名：</div></td>
      <td width="199"><div align="center">
        <input type="text" name="bname">
      </div></td>
    </tr>
    <tr>
      <td><div align="center">出版社：</div></td>
      <td><div align="center">
        <input type="text" name="bcbs">
      </div></td>
    </tr>
    <tr>
      <td><div align="center">状态：</div></td>
      <td><div align="center">
        <input type="radio" name="bstate" value="1"checked>
        1
        <input type="radio" name="bstate" value="0" >
      0</div></td>
    </tr>
        <tr>
      <td><div align="center">损坏情况：</div></td>
      <td><div align="center">
        <input type="radio" name="brokrn" value="1"checked>
        1
        <input type="radio" name="broken" value="0" >
      0</div></td>
    </tr>
    <tr>
      <td><div align="center">价格： </div></td>
      <td><div align="center">
        <input type="text" name="bprice">
      </div></td>
    </tr>
    <tr>
      <td height="22" colspan="2"><div align="center">
        <input name="submit" type="submit" value="提交">
      </div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p><br>
    <br>
    <br>
  </p>
</form>
</body>
</html>