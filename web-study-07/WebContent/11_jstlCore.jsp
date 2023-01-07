<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<c:set var="msg" value="Hello"></c:set> <%--value�Ӽ��� ���ڿ��� ����� �� ���� --%>
		\${msg } = ${msg }<br>
		<c:set var="age"> <%--scope�Ӽ��� �����Ͽ��� ������ page�������� ����� �� �ִ� ������ msg�� Hello�� ������ --> pageContext.setAttribute("msg","Hello"); --%>
		30
		</c:set>
		\${age } = ${age }<hr> <%--scope�Ӽ��� �����Ͽ��� ������ page�������� ����� �� �ִ� ������ age�� 30 �� ������ --> pageContext.setAttribute("age",30); --%>
		
		<c:set var="member" value="<%=new com.saeyan.javabeans.MemberBean() %>"></c:set>
		<%--�ڹ��ڵ�� �� ��ü�� ������ ���� �ְ�, <jsp:useBean>�׼��±׸� �̿��ؼ� �� ��ü�� ������ ���� ���� --%>
		<%--com.saeyan.javabeans.MemberBean member = new  com.saeyan.javabeans.MemberBean(); --> �ڹ��ڵ�� ��ü ����--%>
		<%--<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/> --> <jsp:useBean>�׼��±׷� ��ü ����--%>
		<c:set target="${member }" property="name" value="������"></c:set> <%--member.setName("������"); --%>
		<c:set target="${member }" property="userid">pinksubin</c:set> <%--member.setUserid("pinksubin"); --%>
		
		\${member } = ${member }<hr> <%--toString�޼ҵ��� ���� �������̵��Ǿ� ��ü ��� --%>
		<c:set var="add" value="${10+5 }"></c:set> <%--value�Ӽ��� ���ڿ����ܿ� ǥ���� ����� �� ���� --%>
		\${add } = ${add }<br>
		<c:set var="flag" value="${10>5 }"></c:set>
		\${flag } = ${flag }<br>
	</body>
</html>