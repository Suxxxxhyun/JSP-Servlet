<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8"); //post����̶�, request.setCharacterEncoding("UTF-8"); ���־���, get�����, <server.xml�� Connector�ڵ��ʸ� �����ϸ� ��. p102
%>
<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>
<jsp:setProperty name="member" property="*"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>ȸ���� ���� �Է� ��</h2>
		<form method="post" action="03_addMember.jsp">
			<table>
				<tr>
					<td>�̸�</td>
					<td><jsp:getProperty name="member" property="name"/></td>
				</tr>
				<tr>
					<td>���̵�</td>
					<td><jsp:getProperty name="member" property="userid"/></td>
				</tr>
				<tr>
					<td>����</td>
					<td><jsp:getProperty name="member" property="nickname"/></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td><jsp:getProperty name="member" property="pwd"/></td>
				</tr>
				<tr>
					<td>�̸���</td>
					<td><jsp:getProperty name="member" property="email"/></td>
				</tr>
				<tr>
					<td>��ȭ��ȣ</td>
					<td><jsp:getProperty name="member" property="phone"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>