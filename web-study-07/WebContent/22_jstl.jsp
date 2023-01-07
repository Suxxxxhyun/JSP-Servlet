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
		<c:set var="age" value="30" scope="page"></c:set>
		나이 : <c:out value="${age }">10</c:out><br> <%--default속성 없이 default값을 태그 내부에 작성한 예 --%>
												   <%--변수 age에 저장된 30값이 이미 있기때문에, default로 지정한 10이 출력되지 않음 --%>
		<c:remove var="age" scope="page"/>
		나이 : <c:out value="${age }">10</c:out><br> <%--변수 age에 저장된 값이 없기때문에, default로 지정한 10이 출력되지 않음 --%>
		
		<c:catch var="errmsg">
			예외 발생 전<br>
			<%= 1/0 %><br>
			예외 발생 후<br>
		</c:catch>
		
		<c:out value="${errmsg }"></c:out>
	</body>	
</html>