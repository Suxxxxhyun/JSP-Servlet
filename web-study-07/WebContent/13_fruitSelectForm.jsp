<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="13_fruitSelect.jsp">
			<label for="fruit">과일을 선택하세요</label><br>
			<select id="fruit" name="fruit">
				<option value="1">사과</option>
				<option value="2">메론</option>
				<option value="3">바나나</option>
			</select>
			<input type="submit" value="전송">
		</form>
	</body>	
</html>