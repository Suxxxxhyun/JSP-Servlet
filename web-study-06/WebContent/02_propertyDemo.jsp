<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�ڹ� �� ������Ƽ �� ��� ����(getProperty, setProperty �׼� �±�)</title>
	</head>
	<body>
		<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>
		
		�ڹ� �� ��ü ���� �� ����� ���� ����ϱ�<br><br>
		�̸� : <jsp:getProperty property="name" name="member"/><br>
		���̵� : <jsp:getProperty property="userid" name="member"/><br>
		<hr>
		
		<jsp:setProperty property="name" name="member" value="������"/>
		<jsp:setProperty property="userid" name="member" value="pinksubin"/>
		���� ������ �� ����� ���� ����ϱ�<br><br>
		�̸� : <jsp:getProperty property="name" name="member"/><br>
		���̵� : <jsp:getProperty property="userid" name="member"/><br>
		
	</body>
</html>