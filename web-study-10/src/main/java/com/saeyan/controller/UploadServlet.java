package com.saeyan.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/upload.do")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//여기를 바꿔주면 다운받는 경로가 바뀜
		String savePath = "upload"; //upload라는 폴더를 만들어줌
		//최대 업로드 파일크기 5MB로 제한
		int uploadFileSizeLimit = 5*1024*1024;
		//파일 이름이 한글일 경우, MultipartRequest객체의 매개변수 값을 utf-8로 준다.
		String encType = "UTF-8";
		
		//서버상의 실제 경로를 찾아줌
		//개발자가 프로젝트를 진행하면서 사용하는 워크스페이스는 소스를 관리하기 위한 곳이고
		//실제 사용자가 서비스를 받는 프로젝트 폴더는 워크스페이스 내의 .metadata디렉토리에 생성된다.
		//업로드 되는 파일은 .metadata디렉토리에 생성되는 워크스페이스 내에 저장하겠다.
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 : ");
		System.out.println(uploadFilePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, //request객체
					uploadFilePath, //서버상의 실제 디렉토리
					uploadFileSizeLimit, //최대 업로드 파일크기
					encType, //인코딩방법
					new DefaultFileRenamePolicy()); //동일한 이름이 존재하면 새로운 이름이 부여됨
			//업로드된 파일의 이름 얻기
			//업로드된 파일의 이름을 얻어오기 위해서는 input태그의 name속성값을 MultipartRequest객체의 getFilesystemName()메소드의 매개변수로 전달해줌.
			String fileName = multi.getFilesystemName("uploadFile");
			
			if(fileName == null) { //파일이 업로드 되지 않았을때
				System.out.print("파일 업로드 되지 않았음");
			} else {
				out.println("<br> 글쓴이 : " + multi.getParameter("name"));
				out.println("<br> 제목 : " + multi.getParameter("title"));
				out.println("<br> 파일명 : " + fileName);
			} //else 
		} catch (Exception e) {
			System.out.print("예외 발생 : " + e);
		} //catch
	}

}
