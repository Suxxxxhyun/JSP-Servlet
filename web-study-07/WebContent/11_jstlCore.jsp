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
		<c:set var="msg" value="Hello"></c:set> <%--value속성에 문자열값 기술할 수 있음 --%>
		\${msg } = ${msg }<br>
		<c:set var="age"> <%--scope속성을 생략하였기 때문에 page영역에서 사용할 수 있는 변수인 msg에 Hello값 지정함 --> pageContext.setAttribute("msg","Hello"); --%>
		30
		</c:set>
		\${age } = ${age }<hr> <%--scope속성을 생략하였기 때문에 page영역에서 사용할 수 있는 변수인 age에 30 값 지정함 --> pageContext.setAttribute("age",30); --%>
		
		<c:set var="member" value="<%=new com.saeyan.javabeans.MemberBean() %>"></c:set>
		<%--자바코드로 빈 객체를 생성할 수도 있고, <jsp:useBean>액션태그를 이용해서 빈 객체를 생성할 수도 있음 --%>
		<%--com.saeyan.javabeans.MemberBean member = new  com.saeyan.javabeans.MemberBean(); --> 자바코드로 빈객체 생성--%>
		<%--<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/> --> <jsp:useBean>액션태그로 빈객체 생성--%>
		<c:set target="${member }" property="name" value="전수빈"></c:set> <%--member.setName("전수빈"); --%>
		<c:set target="${member }" property="userid">pinksubin</c:set> <%--member.setUserid("pinksubin"); --%>
		
		\${member } = ${member }<hr> <%--toString메소드의 의해 오버라이딩되어 객체 출력 --%>
		<c:set var="add" value="${10+5 }"></c:set> <%--value속성에 문자열값외에 표현언어도 기술할 수 있음 --%>
		\${add } = ${add }<br>
		<c:set var="flag" value="${10>5 }"></c:set>
		\${flag } = ${flag }<br>
	</body>
</html>