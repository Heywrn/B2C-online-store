<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=">
<title>����¼��</title>
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
    <td width="139"><div align="center" class="STYLE4">����id��</div></td>
    <td width="173"><input name="oid" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">�û�id��</div></td>
    <td><input name="uid" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">�û�������</div></td>
    <td><input name="name" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">��ϵ�绰�� </div></td>
    <td><input name="tel" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">���͵�ַ��</div></td>
    <td><input name="adda" type="text"></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">�Ƿ�ѡ�����͵㣺 </div></td>
    <td><label>
      <input name="way" type="radio" value="��" checked>
    �� 
    <input type="radio" name="way" value="��">
    ��
    </label></td>
  </tr>
  <tr bordercolor="#000000">
    <td><div align="center" class="STYLE4">����״̬��</div></td>
    <td><input name="nowa" type="text" value="����������"></td>
  </tr>
  <tr bordercolor="#000000">
    <td colspan="2"><div align="center" class="STYLE2">
      <input name="submit" type="submit" value="�ύ">
    </div></td>
    </tr>
</table>
</div>
</form>
</body>
</html>