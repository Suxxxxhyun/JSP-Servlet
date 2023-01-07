package unit07;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdditionServlet
 */
@WebServlet("/AdditionServlet")
public class AdditionServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num1 = 20;
		int num2 = 10;
		int add = num1 + num2;
		
		request.setAttribute("num1", num1); //num1이라는 이름으로 num1값을 저장해줌
		request.setAttribute("num2", num2); 
		request.setAttribute("add", add);
		RequestDispatcher dispatcher = request.getRequestDispatcher("07_addition.jsp");
		dispatcher.forward(request, response);
		//p196, forward()메소드는 sendRedirect()메소드처럼, 다른 페이지로 이동하기 위해 사용하는 것인데,
		//forward()는 requestDispatcher객체로 접근해야만 호출이 가능함.
		//requestDispatcher객체는 getRequestDispatcher() 메서드로 객체를 얻어올 수가 있고, 얻어진 requestDispatcher객체로 forward()호출 가능
		//-> 결국, getRequestDispatcher의 매개변수로 지정한 페이지로 이동하게 됨.
		//-> 브라우저의 url변경되지 않고 페이지가 이동이 됨.
		//-> 기존의 request와 response는 유지된다.
	}

}
