<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%-- 자바 코드 : <%=request.getParameter("id") %><br> --%>
		표현언어 : ${param.id}<br><br>
		EL식(표현식)으로 비교<hr>
		==연산자 사용결과 : ${param.id == "pinksung"}<br>
		<%--EL식으로 ==연산자를 사용하면 객체의 주솟값이 아닌 객체의 데이터값(내용)을 비교한다. --%>
	</body>
</html>