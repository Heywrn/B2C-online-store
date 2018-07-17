<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="6-1.jsp">
用户名：<input type="text" name="xm"><br>
密码：<input type="password" name=mm><br>
性别：<input type="radio" name="xb" value="女">女
    <input type="radio" name="xb" value="男" checked>男
<br>
爱好：<input type="checkbox" name="an1" value="basketball">篮球
    <input type="checkbox" name="an2" value="football">足球
职业：<select name="zy">
    <option value="teacher">教师</option>
    <option value="student">学生</option>
</select><br>
意见：<textarea name="yj" rows="5" cols="45">
</textarea>
<br>
<input type="submit" value="提交">
<input type="reset" value="重置">
</form>
</center>
</body>
</html>