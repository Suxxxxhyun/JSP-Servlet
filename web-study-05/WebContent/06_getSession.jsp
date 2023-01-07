<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>세션에 설정된 모든 값 얻어오기</h3>
		<%
			Enumeration names = session.getAttributeNames();
			while(names.hasMoreElements()){
				String name = names.nextElement().toString();
				String value = session.getAttribute(name).toString();
				out.println(name + " : " + value + "<br>");
			}
		%>
	</body>
</html>