<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- 표현 언어(EL, Expression Language : 이렇게 값을 가져오면 편하다 -->
		${"Hello"} <br> <%--표현언어 --%>
		<%= "Hello"%> <br> <%--표현식 --%>
		<%out.println("Hello"); %> <%--스크립트릿 --%>
	</body>
</html>