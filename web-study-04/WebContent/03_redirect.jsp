<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>JSP</title>
	</head>
	<body>
		로드북 홈페이지로 이동
		<%
			response.sendRedirect("http://www.roadbook.co.kr");
		%>
	</body>
</html>