<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<form id="dreamdu" action="dreamdu.php" method="post" enctype="multipart/form-data">
    <input id="hiddenField" name="hiddenField" type="hidden" value="hiddenvalue" />
    用户名和密码:
    用户名: <input type="text" id="username" name="username" value="dreamdu" size="15" maxlength="25" />
    密码: <input type="password" id="pass" name="pass" size="15" maxlength="25" />

    网站建设服务:
    注册域名 <input type="radio" value="注册域名" id="service1" name="service" /><br>
    购买空间 <input type="radio" value="购买空间" id="service2" name="service" /><br>
    购买云主机 <input type="radio" value="购买云主机" id="service3" name="service" />
    网站定位与策划 <input type="radio" value="网站定位与策划" id="service4" name="service" /><br>
    网站建设与制作 <input type="radio" value="网站建设与制作" id="service5" name="service" /><br>
    网站推广 <input type="radio" value="网站推广" id="service6" name="service" /><br>
    网站运营 <input type="radio" value="网站运营" id="service7" name="service" /><br>
    SEO服务 <input type="radio" value="SEO服务" id="service8" name="service" /><br>

    个人发展方向:<br>
    游戏人生 <input type="checkbox" value="游戏人生" id="direction1" name="direction1" />
    美工设计  <input type="checkbox" value="美工设计" id="direction2" name="direction2" />
    编程开发 <input type="checkbox" value="编程开发" id="direction3" name="direction3" />
    运营与管理 <input type="checkbox" value="运营与管理" id="direction4" name="direction4" />
    创业 <input type="checkbox" value="创业" id="direction5" name="direction5" />

    照片:
    个性照片上传: <input type="file" id="myimage" name="myimage" size="35" maxlength="255" />
</form>
</body>
</html>