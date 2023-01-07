<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>post방식에서 한글 깨짐 방지</h3>
		<form method="post" action="29_jstlFmt.jsp">
			이름 : <input type="text" name="name">
			<input type="submit" value="전송">
		</form>
	</body>
</html>