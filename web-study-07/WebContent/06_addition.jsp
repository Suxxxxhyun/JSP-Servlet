<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%-- �������� ��� : <%--��ũ��Ʈ�������� ������ �ڹ��ڵ� --%>
		<%--<%
			String str1 = request.getParameter("num1");
			String str2 = request.getParameter("num2");
			
			int num1 = Integer.parseInt(str1);
			int num2 = Integer.parseInt(str2);
		%>
		
		<%=num1 %> + <%=num2 %> = <%=num1 + num2 %> <hr> --%>
		
		EL��� : <%-- ���� ����ϰ� ������ �ڵ� --%>
		${param.num1} + ${param.num2} = ${param.num1 + param.num2}
	</body>
</html>