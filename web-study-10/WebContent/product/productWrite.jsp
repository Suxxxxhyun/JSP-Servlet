<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 관리</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping.css">
		<script type="text/javascript" src="script/product.js"></script>
	</head>
	<body>
		<div id="wrap" align="center">
			<h1>상품 등록 - 관리자 페이지</h1>
			<!-- enctype를 추가하지 않으면 파일 선택 박스에서 선택된 파일의 이름만 텍스트 형태로 전송되고 파일객체가 서버로 전송되지 않음 -->
			<!-- form태그에 action속성을 생략하면 해당 페이지를 요청할때와 동일한 서블릿으로 요청된다. 즉, productWrite.do가 요청된다. -->
			<form method="post" enctype="multipart/form-data" name="frm">
				<table>
					<tr>
						<th>상 품 명</th>
						<td><input type="text" name="name" size="80"></td>
					</tr>
					<tr>
						<th>가 격</th>
						<td><input type="text" name="price">원</td>
					</tr>
					<tr>
						<th>사 진</th>
						<td>
							<input type="file" name="pictureUrl" size="80"><br>
							(주의사항 : 이미지를 변경하고자 할때만 선택하시오)
						</td>
					</tr>
					<tr>
						<th>설 명</th>
						<td><textarea cols="80" rows="10" name="description"></textarea></td>
					</tr>
				</table>
				<br>
				<input type="submit" value="등록" onclick="return productCheck()">
				<input type="reset" value="다시작성">
				<input type="button" value="목록" onclick="location.href='productList.do'">
			</form>
		</div>
	</body>
</html>