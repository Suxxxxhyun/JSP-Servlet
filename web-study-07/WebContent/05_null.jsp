<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		�ڹ� �ڵ� : <%=request.getParameter("id") %><br>
		ǥ����� : ${param.id}<br><br>
		
		�ڹ��ڵ�� ��<hr>
		==������ ����� : <%= request.getParameter("id")=="pinksung" %><br>
		equals() ��� ��� : <%= request.getParameter("id").equals("pinksung") %><br><br>
		<%--request.getParameter()�� ��ȯŸ���� String�̰�, �ڹٿ��� StringŬ������ equals()�޼ҵ尡 �̹� �������̵��Ǿ��ִ�. --%>
		<%--����  equals()�� ==�����ڴ� ��ü�� �ּҰ��� ���ϴ� ������ ����� �Ѵ�.--%>
		
		EL��(ǥ����)���� ��<hr>
		==������ ����� : ${param.id == "pinksung"}<br>
		<%--EL������ ==�����ڸ� ����ϸ� ��ü�� �ּڰ��� �ƴ� ��ü�� �����Ͱ�(����)�� ���Ѵ�. --%>
	</body>
</html>