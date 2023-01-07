<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		자바 코드 : <%=request.getParameter("id") %><br>
		표현언어 : ${param.id}<br><br>
		
		자바코드로 비교<hr>
		==연산자 사용결과 : <%= request.getParameter("id")=="pinksung" %><br>
		equals() 사용 결과 : <%= request.getParameter("id").equals("pinksung") %><br><br>
		<%--request.getParameter()의 반환타입이 String이고, 자바에서 String클래스는 equals()메소드가 이미 오버라이딩되어있다. --%>
		<%--원래  equals()와 ==연산자는 객체의 주소값을 비교하는 동일한 기능을 한다.--%>
		
		EL식(표현식)으로 비교<hr>
		==연산자 사용결과 : ${param.id == "pinksung"}<br>
		<%--EL식으로 ==연산자를 사용하면 객체의 주솟값이 아닌 객체의 데이터값(내용)을 비교한다. --%>
	</body>
</html>