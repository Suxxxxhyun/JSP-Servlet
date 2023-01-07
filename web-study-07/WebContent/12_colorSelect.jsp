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
		<c:if test="${param.color == 1 }">
			<span style="color:red;">빨강</span>
			${param.color }
		</c:if>
		<c:if test="${param.color == 2 }">
			<span style="color:green;">초록</span>
		</c:if>
		<c:if test="${param.color == 3 }">
			<span style="color:blue;">파랑</span>
		</c:if>
	</body>
</html>