<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%! //선언문에 선언한 변수 : global_cnt
	int global_cnt = 0;
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			int local_cnt=0;
			
			out.print("<br> local_cnt : ");
			out.print(local_cnt++);
			
			out.print("<br> global_cnt : ");
			out.print(global_cnt++);
		%>
	</body>
</html>