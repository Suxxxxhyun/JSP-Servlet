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
		<c:set var="age" value="30" scope="page"></c:set>
		���� : <c:out value="${age }">10</c:out><br> <%--default�Ӽ� ���� default���� �±� ���ο� �ۼ��� �� --%>
												   <%--���� age�� ����� 30���� �̹� �ֱ⶧����, default�� ������ 10�� ��µ��� ���� --%>
		<c:remove var="age" scope="page"/>
		���� : <c:out value="${age }">10</c:out><br> <%--���� age�� ����� ���� ���⶧����, default�� ������ 10�� ��µ��� ���� --%>
		
		<c:catch var="errmsg">
			���� �߻� ��<br>
			<%= 1/0 %><br>
			���� �߻� ��<br>
		</c:catch>
		
		<c:out value="${errmsg }"></c:out>
	</body>	
</html>