<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		�������� ��� :
		<%
			int num1 = (Integer) request.getAttribute("num1");
			int num2 = (Integer) request.getAttribute("num2"); //request.getAttribute()�� ��ȯ���� Object���̱⶧����, ������ ����ȯ�� ����߸���.
		%>
		<%=num1 %> + <%=num2 %> = <%=num1 + num2 %> <hr> 
		
		ǥ������� :
		${num1 } + ${num2 } = ${add}
		<%--${num1 } �� �κа� 11������ ������ ����� --> setAttribute�� num1�̶�� �̸����� �����Ѱ��� ǥ������ �ܼ��ϰ� �޾ƿ������� --%>
	</body>
</html>