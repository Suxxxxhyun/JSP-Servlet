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
		����� ������ �׸��Դϴ�.<hr>
		<c:forEach var="it" items="${paramValues.item }" varStatus="status">
			${it }
			<c:if test="${not status.last}">,</c:if>
		</c:forEach>
	</body>
</html>