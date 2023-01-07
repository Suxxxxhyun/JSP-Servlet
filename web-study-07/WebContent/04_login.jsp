<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<form method ="get" action="04_testLogin.jsp">
			<label for="userid">아이디 : </label> <%--라벨기능 : 라벨을 눌러도 입력양식에 커서가 올라감 --%>
			<input type="text" name="id" id="userid"><br>
			
			<label for="userpw">비밀번호 : </label>
			<input type="password" name="pwd" id="userpwd"><br>
			
			<input type="submit" value="로그인">
		</form>
	</body>
</html>