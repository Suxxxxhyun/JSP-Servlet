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
		<pre>
			<c:set var="now" value="<%=new java.util.Date() %>"></c:set> 
			<%-- java.util.Date클래스로 객체를 일단 생성해야, <fmt:formatDate>태그로 다양한 형태의 날짜를 출력할 수 있음! --%>
			\${now } : ${now }
			<fmt:formatDate value="${now }"></fmt:formatDate> 
			<%--type속성을 생략하면, 디폴트값이 date라서, 날짜정보만 출력됨을 알 수 있음. --%>
			date : <fmt:formatDate value="${now }" type="date"></fmt:formatDate>
			time : <fmt:formatDate value="${now }" type="time"></fmt:formatDate>
			both : <fmt:formatDate value="${now }" type="both"></fmt:formatDate>
			default : <fmt:formatDate value="${now }" type="both" dateStyle="default" timeStyle="default"></fmt:formatDate>
			short : <fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="short"></fmt:formatDate>
			medium : <fmt:formatDate value="${now }" type="both" dateStyle="medium" timeStyle="medium"></fmt:formatDate>
			long : <fmt:formatDate value="${now }" type="both" dateStyle="long" timeStyle="long"></fmt:formatDate>
			full : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate>
			pattern : "yyyy년 MM월 dd일 hh시 mm분 ss초" : 
			<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"></fmt:formatDate>
		</pre>
	</body>
</html>