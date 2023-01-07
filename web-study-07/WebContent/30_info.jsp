<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>post방식에서 한글 깨짐 방지</h3>
		<form method="post" action="30_jstlFmt.jsp">
			이름 : <input type="text" name="name">
			<input type="submit" value="전송">
		</form>
	</body>
</html>