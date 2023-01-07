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
		<%
			String[] movieList = {"타이타닉", "시네마 천국", "혹성탈출","킹콩"};
			pageContext.setAttribute("movieList", movieList);
		%>
		<c:forEach var="movie" items="${movieList }">
			${movie }<br>
		</c:forEach>
		<%-- ${movieList } 이렇게 그냥 작성하면 그 객체의 주솟값이 나옴--%>
	</body>
</html>