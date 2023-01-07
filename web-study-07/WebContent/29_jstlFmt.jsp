<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%request.setCharacterEncoding("UTF-8"); %>
		이름 : <%=request.getParameter("name") %>
		이름 : ${param.name }
	</body>
</html>