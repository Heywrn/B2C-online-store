<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员登录</title>
<style type="text/css">
<!--
body {
	background-image: url(MIS30.jpg);
}
.STYLE14 {font-size: 9mm}
.STYLE3 {font-size: xx-large}
-->
</style></head>
<form  method="POST" action="MIS30P22.jsp" name="form1" onSubmit="return check()"> 
  <div align="left" class="STYLE14">
    <p>&nbsp;</p>
    <table width=29% align="center" border=16 bordercolor="#999999" bgcolor="#F0F0F0">
      <tr> <th colspan=2 scope="col"><span class="STYLE3">&nbsp;管理员登录</span></th> 
    </tr> 
      <tr> 
        <td><div align="right" class="STYLE3">账号：</div></td> 
     <td><input name="aid" type="text" size="18"></td> 
     </tr><tr> 
       <td><div align="right" class="STYLE3">密码：</div></td> 
     <td><input name="apw" type="password" size="19"></td> 
     </tr> <tr> 
       <td></td> 
     <td>
       <div align="left" class="STYLE3">
         <input name="ok" type="submit" value="提交"> 
         <input name="cancel" type="button" onclick=window.open("MIS30P21.jsp") value="取消">
        </div></td> 
     </tr> 
    </table>
  </div>
<div align="center"></div></form> 
</body> 
</html> 