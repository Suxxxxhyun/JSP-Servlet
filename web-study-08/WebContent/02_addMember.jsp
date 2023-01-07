<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! //선언부는 첫 방문자에 의해 단한번 수행한다.
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass ="tiger";
	
	String sql = "insert into member values(?,?,?,?,?,?)";
%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
	<%
		request.setCharacterEncoding("UTF-8"); //post방식으로, 입력폼에 한글 입력시, 그 한글을 처리하기 위한 메소드로 p108에서 확인할 수 있다.
		
		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String admin = request.getParameter("admin");
		
		try{
			//1.jdbc를 로드 - DriverManager에 OracleDriver를 등록해놓음 (자바 애플리케이션과 오라클을 연결해줌)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. Connection객체 생성 - 데이터베이스 연결해주기 위해 Connection객체 생성
			conn = DriverManager.getConnection(url,uid,pass);
			//3. PreparedStatement객체 생성
			pstmt = conn.prepareStatement(sql);
			//4. 쿠리문의 바인드변수에 값을 채움
			pstmt.setString(1, name);
			pstmt.setString(2, userid);
			pstmt.setString(3, pwd);
			pstmt.setString(4, email);
			pstmt.setString(5, phone);
			pstmt.setInt(6, Integer.parseInt(admin));
			//5. 쿠리문 수행
			pstmt.executeUpdate();
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			try{
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (Exception e){
				e.printStackTrace();
			} //finally의 끝
		}
	%>
	<h3>회원 가입 성공</h3>
	<a href="01_allMember.jsp">회원 전체 목록 보기</a>