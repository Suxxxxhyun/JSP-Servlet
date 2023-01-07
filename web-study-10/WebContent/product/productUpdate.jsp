<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<h1>상품 수정 - 관리자 페이지</h1>
			<!-- enctype를 추가하지 않으면 파일 선택 박스에서 선택된 파일의 이름만 텍스트 형태로 전송되고 파일객체가 서버로 전송되지 않음 -->
			<!-- form태그에 action속성을 생략하면 해당 페이지를 요청할때와 동일한 서블릿으로 요청된다. 즉, productUpdate.do가 요청된다. -->
			<form method="post" enctype="multipart/form-data" name="frm">
				<!-- 상품코드는 화면에 출력할 용도가 아닌 수정할 상품 정보를 입력한 후, 어떤 상품 정보를 수정할지를 위한 검색조건에 사용할 것이기 때문에 hidden태그에 출력한다. -->
				<input type="hidden" name="code" value="${product.code }">
				<!-- 상품 이미지는 file태그에서 선택할 것인데, 혹시 상품이미지를 수정하지 않을경우, 이전에 등록된 상품 이미지로 업데이트해야하기 때문에
				데이터베이스에 얻어온 상품 이미지를 hidden태그에 실어서 상품을 수정할 때 사용할 것이다. -->
				<input type="hidden" name="nonmakeImg" value="${product.pictureUrl }">
				<table>
					<tr>
						<td>
							<c:choose>
								<c:when test="${empty product.pictureUrl }">
								<!-- 상품 정보를 등록하면서 이미지 파일을 선택하지 않았다면, noimage.gif를 화면에 출력한다. -->
									<img src="upload/null.jpg">
								</c:when>
								<c:otherwise>
									<img src="upload/${product.pictureUrl }">
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<table>
								<tr>
									<th style="width:80px">상품명</th>
									<td>
										<input type="text" name="name" value="${product.name }" size="80">
									</td>
								</tr>
								<tr>
									<th>가 격</th>
									<td><input type="text" name="price" value="${product.price }">원</td>
								</tr>
								<tr>
									<th>사 진</th>
									<td>
										<input type="file" name="pictureUrl"><br>
										(주의사항 : 이미지를 변경하고자 할때만 선택하시오)
									</td>
								</tr>
								<tr>
									<th>설 명</th>
									<td>
										<textarea cols="90" rows="10" name="description">
											${product.description }
										</textarea>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<br>
				<input type="submit" value="수정" onclick="return productCheck()">
				<input type="reset" value="다시작성">
				<input type="button" value="목록" onclick="location.href='productList.do'">
			</form>
		</div>
	</body>
</html>