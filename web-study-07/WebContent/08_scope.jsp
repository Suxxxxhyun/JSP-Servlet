<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	pageContext.setAttribute("name", "page man");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session man");
	application.setAttribute("name", "application man");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		page �Ӽ� : ${name } <br>
		request �Ӽ� : ${requestScope.name } <br>
		session �Ӽ� : ${sessionScope.name } <br>
		application �Ӽ� : ${applicationScope.name } 
	</body>	
</html>