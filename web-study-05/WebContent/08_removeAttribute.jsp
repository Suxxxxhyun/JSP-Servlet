<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			session.setAttribute("s_name1", "���� ���ǿ� ����� ù��° ���̿���.");
			session.setAttribute("s_name2", "���� ���ǿ� ����� �ι�° ���̿���.");
			session.setAttribute("s_name3", "���� ���ǿ� ����� ����° ���̿���.");
			
			out.print("<h3> >> ���ǰ��� �����ϱ� �� << </h3>");
			Enumeration names;
			names = session.getAttributeNames();
			while(names.hasMoreElements()){
				String name = names.nextElement().toString();
				String value = session.getAttribute(name).toString();
				out.println(name + " : " + value + "<br>");
			}
			
			session.removeAttribute("s_name2");
			
			out.print("<hr> <h3> >> ���ǰ��� ������ �� << </h3>");
			names = session.getAttributeNames();
			while(names.hasMoreElements()){
				String name = names.nextElement().toString();
				String value = session.getAttribute(name).toString();
				out.println(name + " : " + value + "<br>");
			}
		%>
	</body>
</html>