package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login.jsp";
		
		HttpSession session = request.getSession();
		//이미 로그인된 사용자라면
		if(session.getAttribute("loginUser") != null) {
			url = "main.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login.jsp";
		
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.userCheck(userid, pwd);
		
		if(result == 1) {
			MemberVO mVo = mDao.getMember(userid);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", mVo);
			//로그인 인증 처리된 회원 정보는 다른 사이트에 갔다 돌아와도 다시 로그인하지 않아도 될 수 있도록 하기위해서 세션에 등록해두어야한다. 
			//세션 객체를 생성하여 세션에 회원정보를 저장해둠.
			//또, 웹사이트를 사용하다보면 게시글을 올리거나 상품을 주문하게 될 경우 회원정보가 필요하게 되는데, 이럴 때마다 회원 정보를 데이터베이스에서 얻어온다면 번거로울 것이다.
			//로그인하면서 얻어온 회원정보를 세션에 저장해두면 어느 페이지에서든 세션에 저장된 회원정보를 얻어올 수 있어서 편리하다.
			//그래서 회원정보를 세션에 저장해둔것임.
			request.setAttribute("message", "회원 가입에 성공했습니다.");
			//jsp페이지에 보낼 메시지를 요청 객체에 저장해둔다.
			url = "main.jsp";
		} else if(result == 0) {
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		} else if(result == -1) {
			request.setAttribute("message", "존재하지 않는 회원입니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
