<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		고전적인 방식 :
		<%
			int num1 = (Integer) request.getAttribute("num1");
			int num2 = (Integer) request.getAttribute("num2"); //request.getAttribute()는 반환값이 Object형이기때문에, 무조건 형변환을 해줘야만함.
		%>
		<%=num1 %> + <%=num2 %> = <%=num1 + num2 %> <hr> 
		
		표현언어방식 :
		${num1 } + ${num2 } = ${add}
		<%--${num1 } 이 부분과 11라인이 동일한 기능임 --> setAttribute에 num1이라는 이름으로 지정한것을 표현언어로 단순하게 받아오고있음 --%>
	</body>
</html>