<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String id = "pinksung";
			String pwd = "1234";
			String name = "성윤정";
			request.setCharacterEncoding("UTF-8");
			if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
				response.sendRedirect("04_main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
			} else {
				response.sendRedirect("04_loginForm.jsp");
			}
		%>
	</body>
</html>