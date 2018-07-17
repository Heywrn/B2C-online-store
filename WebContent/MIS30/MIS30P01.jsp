<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>图书管理-借书管理</title>
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
.STYLE1 {font-size: large}
-->
</style>
</head>

<body>
<div id="Layer1">
  <table width="300" height="203" border="12" bordercolor="#999999" bgcolor="#F0F0F0">
  <tr>
      <td><form id="form1" name="form1" method="post" action="MIS30P02.jsp">
        <label>
          <div align="center">
            <input name="Submit" type="submit" class="STYLE1" value="图书管理" />
          </div>
        </label>
      </form>      </td>

      <td><form id="form1" name="form1" method="post" action="MIS30P15.jsp">
        <label>
          <div align="center">
            <input name="Submit" type="submit" class="STYLE1" value="图书查询" />
          </div>
        </label>
      </form>      </td>
    </tr>
	<tr>
      <td><form id="form1" name="form1" method="post" action="MIS30P08.jsp">
        <label>
          <div align="center">
            <input name="Submit" type="submit" class="STYLE1" value="图书借阅" />
          </div>
        </label>
      </form>      </td>

      <td><form id="form1" name="form1" method="post" action="MIS30P11.jsp">
        <label>
          <div align="center">
            <input name="Submit" type="submit" class="STYLE1" value="图书归还" />
          </div>
        </label>
      </form>      </td>
    </tr>
	<tr>
      <td><form id="form1" name="form1" method="post" action="MIS30P24.jsp">
        <label>
          <div align="center">
            <input name="Submit" type="submit" class="STYLE1" value="图书统计" />
          </div>
        </label>
      </form></td> 

      <td><form id="form1" name="form1" method="post" action="MIS30P31.jsp">
        <label>
          <div align="center">
            <input name="Submit" type="submit" class="STYLE1" value="图书输出" />
          </div>
        </label>
      </form></td> </tr>

  </table>
</div>
</body>
</html>