<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- ǥ�� ���(EL, Expression Language : �̷��� ���� �������� ���ϴ� -->
		${"Hello"} <br> <%--ǥ����� --%>
		<%= "Hello"%> <br> <%--ǥ���� --%>
		<%out.println("Hello"); %> <%--��ũ��Ʈ�� --%>
	</body>
</html>