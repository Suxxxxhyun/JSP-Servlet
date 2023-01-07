<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="javax.sql.DataSource" %>
<%@page import="javax.naming.InitialContext" %>
<%@page import="javax.naming.Context" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h4>디비 연동</h4>
		<%
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			Connection conn = ds.getConnection();
			out.println("데이터베이스 커넥션 풀-DBCP 연동 성공");
		%>
		<!-- oracle.jdbc.driver.T4CConnection.isValid(I)Z오류 설명
		T4CConnection Class가 가지고 있는 isValid 메소드에서 오류가 발생하는데, 
		해당 isValid 메소드는 java.sql.Connection.isValid() 메소드인거고, 
		그 메소드는 Java6에서 새로 들어간 메소드 라는거죠 근데 그 메소드를 사용하려면 ojdbc6.jar를 사용해야 하는데, 
		ojdbc5.jar를 사용하면 에러가 발생한다는거죠.
		질문 준 사람(https://okky.kr/articles/370133)은 ojdbc6.jar를 사용했는데도 발생한다고 했으니 
		그게 시스템에 적용이 안될걸 수 있으니 확인해보라고 한거고 

		백앤드님의 경우에는 ojdbc5.jar를 사용한다 했으니 
		ojdbc6.jar로 바꾸면 되는거뿐 ! -->
	</body>
</html>