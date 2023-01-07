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
			//1.Cookie 객체 생성
			Cookie c = new Cookie("id","pinksung");
			//2.유효기간 설정
			c.setMaxAge(365*24*60*60);
			//3.response객체의 addCookie 메소드로 Cookie클래스로 선언된 객체인 c를 설정하면 클라이언트의 일정 폴더에 c쿠키정보를 기록하게 된다.
			response.addCookie(c);
			//4.쿠키를 생성하여 클라이언트에 전송	
			response.addCookie(new Cookie("pwd","test1234"));
			response.addCookie(new Cookie("age","20"));
		%>
		<h3>쿠키 설정</h3>
	</body>
</html>