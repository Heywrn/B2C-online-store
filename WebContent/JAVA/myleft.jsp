<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<style type="text/css">
<!--
body {
	background-color: #FFFFCC;
}
#Layer1 {
	position:absolute;
	left:11px;
	top:18px;
	width:232px;
	height:366px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:17px;
	top:30px;
	width:220px;
	height:102px;
	z-index:2;
}
#Layer3 {
	position:absolute;
	left:23px;
	top:178px;
	width:198px;
	height:169px;
	z-index:3;
}
.STYLE1 {font-size: 36px}
-->
</style></head>

<body>
<div id="Layer1"></div>
<div id="Layer2"><a href="main.jsp" target="_blank">"<img src="logo.png" width="209" height="102" /></a></div>
<div id="Layer3">
  <table width="198" height="170" border="0">
    <tr>
      <td height="90"><div align="center"><span class="STYLE1"><a href="myinformation.jsp" target="mainFrame">个人信息</a></span></div></td>
    </tr>
    <tr>
      <td height="90"><div align="center"><span class="STYLE1"><a href="update.jsp" target="mainFrame">修改信息</a></span></div></td>
    </tr>
    <tr>
      <td height="90"><div align="center"><span class="STYLE1"><a href="order.jsp" target="_blank">我的订单</a></span></div></td>
    </tr>
  </table>
</div>
</body>
</html>