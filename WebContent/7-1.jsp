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
    �û���������:
    �û���: <input type="text" id="username" name="username" value="dreamdu" size="15" maxlength="25" />
    ����: <input type="password" id="pass" name="pass" size="15" maxlength="25" />

    ��վ�������:
    ע������ <input type="radio" value="ע������" id="service1" name="service" /><br>
    ����ռ� <input type="radio" value="����ռ�" id="service2" name="service" /><br>
    ���������� <input type="radio" value="����������" id="service3" name="service" />
    ��վ��λ��߻� <input type="radio" value="��վ��λ��߻�" id="service4" name="service" /><br>
    ��վ���������� <input type="radio" value="��վ����������" id="service5" name="service" /><br>
    ��վ�ƹ� <input type="radio" value="��վ�ƹ�" id="service6" name="service" /><br>
    ��վ��Ӫ <input type="radio" value="��վ��Ӫ" id="service7" name="service" /><br>
    SEO���� <input type="radio" value="SEO����" id="service8" name="service" /><br>

    ���˷�չ����:<br>
    ��Ϸ���� <input type="checkbox" value="��Ϸ����" id="direction1" name="direction1" />
    �������  <input type="checkbox" value="�������" id="direction2" name="direction2" />
    ��̿��� <input type="checkbox" value="��̿���" id="direction3" name="direction3" />
    ��Ӫ����� <input type="checkbox" value="��Ӫ�����" id="direction4" name="direction4" />
    ��ҵ <input type="checkbox" value="��ҵ" id="direction5" name="direction5" />

    ��Ƭ:
    ������Ƭ�ϴ�: <input type="file" id="myimage" name="myimage" size="35" maxlength="255" />
</form>
</body>
</html>