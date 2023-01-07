<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="EUC-KR">
		<title>서블릿</title>
		<script type="text/javascript" src="param.js"></script>
	</head>
	<body>
		<form method="get" action="ParamServlet" name="frm">
			아이디 : <input type="text" name="id"><br>
			나이 : <input type="text" name="age"><br>
			<input type="submit" value="전송" onclick="return check()">
		</form>
	</body>
</html>