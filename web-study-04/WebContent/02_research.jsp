<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>���� ���� ���</title>
		<style type="text/css">
			b{
				font-size : 16pt;
			}
		</style>
	</head>
	<body>
		<h2>���� ���� ���</h2>
		<%
			request.setCharacterEncoding("UTF-8");
		
			String name = request.getParameter("name");
			out.println("�̸� : <b>" + name + "</b><br>");
			
			String gender = request.getParameter("gender");
			out.println("���� : ");
			if(gender.equals("male")){
				out.println("<b>����</b><br>");
			} else {
				out.println("<b>����</b><br>");
			}
			
			String seasonArr[] = request.getParameterValues("season");
			out.println("����� �����ϴ� ������ ");
			for(String season : seasonArr){
				int n = Integer.parseInt(season);
				switch(n){
				case 1 : out.println("<b> �� </b>�Դϴ�.");
					break;
				case 2 : out.println("<b> ���� </b>�Դϴ�.");
					break;
				case 3 : out.println("<b> ���� </b>�Դϴ�.");
					break;
				case 4 : out.println("<b> �ܿ� </b>�Դϴ�.");
					break;
				}
			}
		%>
		
		<br>
		<b><a href='javasript:history.go(-1)'>�ٽ�</a></b>
	</body>
</html>