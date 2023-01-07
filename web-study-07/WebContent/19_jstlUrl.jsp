<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<c:import url="http://localhost:8070/web-study-07/02_el.jsp" var="data"></c:import>
		${data }
		${pageScope.data }
		<hr>
		${requestScope.data }
		<hr>
		${sessionScope.data }
		<hr>
		${applicationScope.data }
		<hr>
	</body>	
</html>