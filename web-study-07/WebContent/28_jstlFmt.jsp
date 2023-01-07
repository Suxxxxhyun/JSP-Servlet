<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
		<pre>
			��Ĺ ������ �⺻ ������ : <%= response.getLocale() %>
			
			<fmt:setLocale value="ko_kr"></fmt:setLocale>
			�������� �ѱ���� ������ ������ Ȯ�� : <%= response.getLocale() %>
			��ȭ(curreny) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
			��¥ : <fmt:formatDate value="${now }"></fmt:formatDate>
			
			<fmt:setLocale value="ja_JP"></fmt:setLocale>
			�������� �Ϻ���� ������ ������ Ȯ�� : <%= response.getLocale() %>
			��ȭ(curreny) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
			��¥ : <fmt:formatDate value="${now }"></fmt:formatDate>
			
			<fmt:setLocale value="en_US"></fmt:setLocale>
			�������� ����� ������ ������ Ȯ�� : <%= response.getLocale() %>
			��ȭ(curreny) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
			��¥ : <fmt:formatDate value="${now }"></fmt:formatDate>
		</pre>
	</body>
</html>