package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//14~15줄 파일 업로드를 하기위한 클래스에 대한 import
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.saeyan.dao.ProductDAO;
import com.saeyan.dto.ProductVO;

/**
 * Servlet implementation class ProductWriteServlet
 */
@WebServlet("/productWrite.do")
public class ProductWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("product/productWrite.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = getServletContext();
		//서버상의 실제 경로 -> 업로드한 파일을 upload폴더에 넣어줌
		String path = context.getRealPath("upload");
		//파일 이름이 한글일 경우, MultipartRequest객체의 매개변수 값을 utf-8로 준다.
		String encType = "UTF-8";
		//최대 업로드 파일 크기 5MB로 제한
		int sizeLimit = 20 * 1024 * 1024;
		
		//이떄의 request는 MultipartRequest객체와 연결할 request객체, DefaultFileRenamePolicy()는 동일한 파일 이름이 존재하면 새로운 이름이 부여됨
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		
		String name = multi.getParameter("name");
		int price = Integer.parseInt(multi.getParameter("price"));
		String description = multi.getParameter("description");
		//폼에서 입력한 파일명을 얻어오기 위해, input태그의 name속성값을 파라미터로 하면서 getFilesystemName메소드 호출
		String prictureUrl = multi.getFilesystemName("pictureUrl");
		
		ProductVO pVo = new ProductVO();
		pVo.setName(name);
		pVo.setPrice(price);
		pVo.setDescription(description);
		pVo.setPictureUrl(prictureUrl);
		
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.insertProduct(pVo);
		
		//추가된 상품 정보는 상품리스트페이지에 확인하기 위해 producList.do를 요청함
		response.sendRedirect("productList.do");
	}

}
