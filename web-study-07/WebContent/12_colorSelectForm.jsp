<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="12_colorSelect.jsp">
			<label for="color">색상을 선택하세요.</label><br>
			<select id="color" name="color">
				<option value="1">빨강</option>
				<option value="2">초록</option>
				<option value="3">파랑</option>
			</select>
			<input type="submit" value="전송">
		</form>
	</body>
</html>