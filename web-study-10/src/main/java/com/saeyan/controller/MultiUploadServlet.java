package com.saeyan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class MultiUploadServlet
 */
@WebServlet("/upload2.do")
public class MultiUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String savePath ="upload"; //여기를 바꾸어주면 다운받는 경로가 바뀜
		//최대 업로드 파일크기 5MB로 제한
		int uploadFileSizeLimit = 5*1024*1024;
		String encType = "UTF-8";
		
		//서버상의 실제 경로를 찾아줌
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, //request객체
					uploadFilePath, //서버상의 실제 디렉토리
					uploadFileSizeLimit, //최대 업로드 파일크기
					encType, //인코딩방법
					new DefaultFileRenamePolicy()); //동일한 이름이 존재하면 새로운 이름이 부여됨
			//<input>태그의 name속성 값은 다른데, 서로 다른 name속성 값을 알기 위해, MultipartRequest객체의 getFileNames()메소드를 사용한다.
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String file = (String)files.nextElement();
				//업로드된 파일의 이름을 알아오기 위해서는 getFilesystemName()메소드의 매개변수로 <input>의 이름을 주면된다.
				String file_name = multi.getFilesystemName(file);
				//중복된 파일을 업로드할 경우 파일명이 바뀐다.
				//동일한 이름의 파일을 업로드했을 떄, 파일의 중복을 차단하기 위해 파일 명 뒤에 번호를 자동으로 붙여 새로운 파일명을 제공해주기 때문에,
				//번호가 붙기 전 원본 파일명을 출력하고자 할 경우에는, getOriginalFileName()메소드를 사용한다.
				String ori_file_name = multi.getOriginalFileName(file);
				out.print("<br> 업로드된 파일명 : " + file_name);
				out.print("<br> 원본 파일명 : " + ori_file_name);
				out.print("<hr>");
			}
			
		} catch (Exception e) {
			System.out.print("예외 발생 : " + e);
		} //catch
	}

}
