<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�ڹ� �� ��ü �����ϱ�(useBean �׼��±�)</title>
	</head>
	<body>
		<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>
		
		�ڹ� �� ��ü ���� �� ����� ���� ����ϱ�<br><br>
		�̸� : <%=member.getName() %><br>
		���̵� : <%=member.getUserid() %>
		<hr>
		
		���� ������ �� ����� ���� ����ϱ�<br><br>
		<%
			member.setName("������");
			member.setUserid("pinksubin");
		%>
		�̸� : <%=member.getName() %><br>
		���̵� : <%=member.getUserid() %>
	</body>
</html>