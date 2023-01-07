<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- 간단한 인사말 출력하기 -->
		<%-- 인사말을 String 변수에 저장한다. --%>
		<% String name = "Angle"; %>
		Hello <%= name%>
	</body>
</html>