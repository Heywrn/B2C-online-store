<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>冷链物流信息平台</title>
<style type="text/css">
<!--
*{margin:0;padding:0;text-decoration:none;}
body {
	background-color: #544E4E;
	font-family:"微软雅黑";
	color:#fff;
}
a{color:#fff;}
#title h1{text-align:center;font-size:24px;height:72px;line-height:72px;background:#222;}
#title .header{padding:10px 0 0 10px;}
#title .header a:hover{color:#E06262;border-bottom:2px solid #CB2A2A;}
#con{width:600px;margin:0px auto;}
#con img{display:block;float:left;}
#con .c_r{float:right;border:1px dashed #aaa;width:120px;}
#con .c_r a{display:block;width:80px;height:30px;margin:8px 0 0 20px;background:#666;font-size:12px;text-align:center;line-height:30px;}
#con .c_r a:hover{background:#999;}
.STYLE1 {
	font-size: x-large;
	font-weight: bold;
}
</style>
</head>
<body>
<form action="registerdo.jsp">
  <div align="center" class="STYLE1">
    <tr> <th colspan=2 scope="col"><span class="STYLE1">&nbsp;用户注册</span></th> 
</tr> 
    <p>姓名：<input type="text" name="name">
    <br>
      密码：<input type="password" name="pw">
      <br>
      电话：<input type="text" name="tel">
      <br>
      性别：<input type="text" name="sex">
        </p>
    <p>地址： <input type="text" name="add">
      <br>
      <input type="submit" class="STYLE1" value="提交">
        </p>
  </div>
</form>
</body>
</html>
