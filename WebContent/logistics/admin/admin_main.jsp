<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

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
#con{width:100px;margin:10px auto;}
#con img{display:block;float:left;}
#con .c_r{
	float:right;
	border:1px dashed #aaa;
	width:120px;

}
#con .c{position:absolute;left:952px;
	top: 74px;}
#con .c_r a{display:block;width:80px;height:30px;margin:8px 0 0 20px;background:#666;font-size:12px;text-align:center;line-height:30px;}
#con .c_r a:hover{background:#999;}
#Layer1 {
	position:absolute;
	width:114px;
	height:85px;
	z-index:1;
	left: 258px;
	top: 90px;
}
#Layer2 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:2;
	left: 902px;
	top: 83px;
}
#Layer3 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:2;
	left: 529px;
	top: 74px;
}
</style>
</head>
<body>
<div id="title">
	<h1>冷链物流信息后台管理</h1>	
</div>
<div id="con">
  <div id="Layer1">
    <div class="c_r">
      <p>&nbsp;</p>
      <p><a href="login.jsp" target="mainFrame" class="STYLE3">员工登录</a></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
  </div>
  <div class="c_r c" >
		<p><a href="order.jsp" target="mainFrame" class="STYLE3">订单管理</a><a href="customer.jsp" target="mainFrame">客户信息</a>
        <a href="aboutus.jsp" target="mainFrame">关于我们</a></p>
  </div>
</div>
<div id="Layer3"><img class="img" src="1.jpg" width="260" height="119" alt="冷链物流" title="冷链物流"></div>
</body>
</html>
