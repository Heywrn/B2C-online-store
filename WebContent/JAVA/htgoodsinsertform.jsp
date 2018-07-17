<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>商品后台管理</title>
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
<font face="宋体" size="6" ><b>商品后台管理</b><br><br></font>
<form action="htgoodsinsertdo.jsp">
ID号：<input type="text" name="id" ><p>
  商品名：<input type="text" name="name"  ><p>
   价格：<input type="text" name="price" ><p>
    类别：<input type="text" name="classification" ><p> 
    描述：<input type="text" name="miaoshu" ><p>
   服务：<input type="text" name="fuwu" ><p>
    物流：<input type="text" name="wuliu" ><p>   
 <input type="submit" value="提交信息">
  <input type="reset" name="Submit2" value="重置信息" ><p>
</form>
</center>
</body>
</html>