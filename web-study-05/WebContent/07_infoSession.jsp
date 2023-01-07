<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>세션 정보를 얻어오는 메소드를 사용하기</h3>
		<%
			String id_str = session.getId(); //세션id값 얻어오기
			long lasttime = session.getLastAccessedTime(); //해당 세션에 클라이언트가 마지막으로 request를 보낸 시간
			long createdtime = session.getCreationTime(); //세션이 생성된 시간
			long time_used = (lasttime - createdtime) / 6000; //웹사이트에 머문 시간
			int inactive = session.getMaxInactiveInterval() / 60; //세션 유효 시간
			boolean b_new = session.isNew(); //세션이 처음 생성되었으면 true, 이전에 만들어진것이라면 false
		%>
		[1] 세션ID는 [<%= session.getId() %>] 입니다. <br><hr>
		[2] 당신이 웹사이트에 머문 시간은 <%= time_used %> 분입니다. <br><hr>
		[3] 세션의 유효시간은 <%= inactive %> 분입니다. <br><hr>
		[4] 세션이 새로 만들어졌나요?<br>
		<%
			if(b_new)
				out.print(" 예! 새로운 새션을 만들었습니다.");
			else 
				out.print(" 아니오! 새로운 세션을 만들지 않았습니다.");
		%>
	</body>
</html>