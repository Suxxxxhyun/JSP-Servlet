<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 관리</title>
		<script type="text/javascript" src="script/member.js"></script>
	</head>
	<body>
		<h2>회원 가입</h2>
		'*' 표시 항목은 필수 입력항목이다.
		<form action="join.do" method="post" name="frm">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" size="20">*</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="userid" size="20" id="userid">*
						<input type="hidden" name="reid" size="20" >
						<input type="button" value="중복체크" onclick="idCheck()">
						<!-- 데이터베이스를 설계하면서 아이디에 중복된 값을 저장하지 못하도록 pk제약조건을 설정해두었기떄문에 이미 있는 아이디로 insert문을 수행하게 되면 에러가 발생하게 된다. -->
						<!-- 그래서 회원 정보를 데이터베이스에 추가하기 전에 이미 등록된 회원인지를 판별하기 위해 아이디 중복체크를 해야한다. -->
						<!-- 이를 위해 중복체크버튼을 추가하였으며 중복체크 버튼을 클릭하면 idCheck()를 호출함. -->
					</td>
				</tr>
				<tr>
					<td>암호</td>
					<td><input type="password" name="pwd" size="20">*</td>
				</tr>
				<tr height="30">
					<td width="80">암호확인</td>
					<td><input type="password" name="pwd_check" size="20">*</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" size="20"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone" size="20"></td>
				</tr>
				<tr>
					<td>등급</td>
					<td>
						<input type="radio" name="admin" value="0" checked="checked"> 일반회원
						<input type="radio" name="admin" value="1"> 관리자
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="확인" onclick="return joinCheck()">
							<!-- joinCheck()는 확인 버튼을 누르면 실행되는 메서드로, joinCheck()는 member.js에 있기때문에 join.jsp에 member.js를 포함시킴(8줄)-->
							<!-- joinCheck()메소드는 입력이 제대로 되었는지 검사한 후에 frm폼의 action속성에 지정한 파일로 제어를 옮기는 역할을 한다(?) -->
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="취소">
					</td>
				</tr>
				<tr><td colspan="2">${message }</td></tr>
			</table>
		</form>
	</body>
</html>