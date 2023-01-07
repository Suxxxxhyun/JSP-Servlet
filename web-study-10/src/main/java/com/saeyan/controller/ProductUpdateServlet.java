package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.saeyan.dao.ProductDAO;
import com.saeyan.dto.ProductVO;

/**
 * Servlet implementation class ProductUpdateServlet
 */
@WebServlet("/productUpdate.do")
public class ProductUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		
		ProductDAO pDao = ProductDAO.getInstance();
		ProductVO pVo = pDao.selectProductByCode(code);
		
		request.setAttribute("product", pVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("product/productUpdate.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//업로드할 파일 경로를 서버상의 실제 경로로 찾아온다.
		ServletContext context = getServletContext();
		String path = context.getRealPath("upload");
		//업로드할 파일 이름이 한글일 경우 한글이 깨지지 않도록 하기 위한 인코딩 방식을 지정한다.
		String encType = "UTF-8";
		//업로드할 파일의 크기를 최대 20MB로 제한
		int sizeLimit = 20 * 1024 * 1024;
		
		//HttpServletRequest객체, 업로드할 경로, 업로드할 파일의 사이즈에 대한 값을 주어 MultipartRequest객체 생성
		//MultipartRequest객체가 생성되는 순간 서버로 파일이 업로드됨.
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		
		String code = multi.getParameter("code");
		String name = multi.getParameter("name");
		int price = Integer.parseInt(multi.getParameter("price"));
		String description = multi.getParameter("description");
		//<input type="file"> 태그의 name속성 값을 getFilesystemName()의 파라미터로 넘겨줌
		String pictureUrl = multi.getFilesystemName("pictureUrl");
		if(pictureUrl == null) {
			pictureUrl = multi.getParameter("nonmakeImg");
		}
		
		ProductVO pVo = new ProductVO();
		pVo.setCode(Integer.parseInt(code));
		pVo.setName(name);
		pVo.setPrice(price);
		pVo.setDescription(description);
		pVo.setPictureUrl(pictureUrl);
		
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.updateProduct(pVo);
		
		//수정된 상품 정보는 상품 리스트 페이지에서 확인한다. 
		response.sendRedirect("productList.do");
	}

}
