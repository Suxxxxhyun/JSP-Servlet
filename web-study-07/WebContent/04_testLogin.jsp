<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		����� �Է��� �����Դϴ�(�������� ���).<hr>
		���̵� : <%=request.getParameter("id") %><br>
		��й�ȣ : <%=request.getParameter("pwd") %><br><br>
		
		����� �Է��� �����Դϴ�(ǥ�������)<hr>
		���̵� : ${param.id}<br>
		��й�ȣ : ${param["pwd"]}<br>
		
	</body>
</html>