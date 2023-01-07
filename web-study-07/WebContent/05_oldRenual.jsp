<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		자바 코드<hr>
		<% if(request.getParameter("id") != null){%>
		==연산자 사용결과 : <%= request.getParameter("id")=="pinksung" %><br>
		equals() 사용 결과 : <%= request.getParameter("id").equals("pinksung") %><br>
		<% }else{ 
			out.print("id를 전달해주세요");
		}
		%>
	</body>
</html>