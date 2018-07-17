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
<center>
<form  method="POST" action="check1.jsp" name="form1" onsubmit="return check()"> 
<table width=35% border=0 align="center" cellspacing="12" > 
<tr> <th colspan=2 scope="col"><span class="STYLE1">&nbsp;用户登录</span></th> 
</tr> 
 <tr bgcolor="#544E4E"> 
 <td width="40%" bgcolor="#544E4E"><span class="STYLE1">用户id：</span></td> 
 <td width="60%" bgcolor="#544E4E"><input name="id" type="text" class="STYLE1" size="16"></td> 
 </tr><tr bgcolor="#544E4E"> 
 <td bgcolor="#544E4E"><span class="STYLE1">密码：</span></td> 
 <td bgcolor="#544E4E"><input name="pw" type="password" class="STYLE1" size="16"></td> 
 </tr> <tr bgcolor="#544E4E"> 
 <td bgcolor="#544E4E"></td> 
 <td bgcolor="#544E4E"><strong>
   <input name="ok" type="submit" class="STYLE1" value="提交"> 
   <input name="cancel" type="reset" class="STYLE1" value="重置">
 </strong></td>
 </tr> 
</table> 
</form> 
</center>
</body>
</html>
