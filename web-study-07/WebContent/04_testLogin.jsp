<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		당신이 입력한 정보입니다(고전적인 방식).<hr>
		아이디 : <%=request.getParameter("id") %><br>
		비밀번호 : <%=request.getParameter("pwd") %><br><br>
		
		당신이 입력한 정보입니다(표현언어사용)<hr>
		아이디 : ${param.id}<br>
		비밀번호 : ${param["pwd"]}<br>
		
	</body>
</html>