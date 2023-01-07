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
		<c:forEach var="cnt" begin="1" end="10" varStatus="status">
			${cnt } 
			<c:if test="${not status.last }">,</c:if>
		</c:forEach> <!-- 1부터 10까지 순차적으로 cnt변수에 들어간 자연수가 출력됨. -->
		<br><br>
		<table border="1" style="width:100%, text-align:center";>
			<tr>
				<th>index</th> <th>count</th> <th>cnt</th>
			</tr>
			<c:forEach var="cnt" begin="7" end="10" varStatus="status">
			<tr>
				<td>${status.index }</td>
				<td>${status.count }</td>
				<td>${cnt }</td>
			</tr>
			</c:forEach> <!-- 7부터 10까지 순차적으로 cnt변수에 들어간 자연수가 출력됨. -->
		</table>
		<br><br>
		<table border="1" style="width:100%, text-align:center";>
			<tr>
				<th>index</th> <th>count</th> <th>cnt</th>
			</tr>
			<c:forEach var="cnt" begin="1" end="10" varStatus="status" step="2">
			<tr>
				<td>${status.index }</td>
				<td>${status.count }</td>
				<td>${cnt }</td>
			</tr>
			</c:forEach> <!-- step속성을 이용해서 증가값이 2되는것을 알 수 있음. -->
		</table>
	</body>
</html>