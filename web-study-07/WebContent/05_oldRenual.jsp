<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		�ڹ� �ڵ�<hr>
		<% if(request.getParameter("id") != null){%>
		==������ ����� : <%= request.getParameter("id")=="pinksung" %><br>
		equals() ��� ��� : <%= request.getParameter("id").equals("pinksung") %><br>
		<% }else{ 
			out.print("id�� �������ּ���");
		}
		%>
	</body>
</html>