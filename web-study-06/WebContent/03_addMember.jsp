<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8"); //post방식이라서, request.setCharacterEncoding("UTF-8"); 해주었고, get방식은, <server.xml의 Connector코드쪽만 변경하면 됨. p102
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
		<h2>회원의 정보 입력 폼</h2>
		<form method="post" action="03_addMember.jsp">
			<table>
				<tr>
					<td>이름</td>
					<td><jsp:getProperty name="member" property="name"/></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><jsp:getProperty name="member" property="userid"/></td>
				</tr>
				<tr>
					<td>별명</td>
					<td><jsp:getProperty name="member" property="nickname"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><jsp:getProperty name="member" property="pwd"/></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><jsp:getProperty name="member" property="email"/></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><jsp:getProperty name="member" property="phone"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>