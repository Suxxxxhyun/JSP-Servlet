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
		page 속성 : ${name } <br>
		request 속성 : ${requestScope.name } <br>
		session 속성 : ${sessionScope.name } <br>
		application 속성 : ${applicationScope.name } 
	</body>	
</html>