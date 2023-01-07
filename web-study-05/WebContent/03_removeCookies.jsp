<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Cookie cookie = new Cookie("id","");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		%>
		<h3>id쿠기가 삭제되었습니다.</h3>
		<a href="02_getCookies.jsp">
			쿠키삭제를 확인하려면 클릭하세요.
		</a>
	</body>
</html>