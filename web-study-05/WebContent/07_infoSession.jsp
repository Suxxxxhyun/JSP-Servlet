<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>���� ������ ������ �޼ҵ带 ����ϱ�</h3>
		<%
			String id_str = session.getId(); //����id�� ������
			long lasttime = session.getLastAccessedTime(); //�ش� ���ǿ� Ŭ���̾�Ʈ�� ���������� request�� ���� �ð�
			long createdtime = session.getCreationTime(); //������ ������ �ð�
			long time_used = (lasttime - createdtime) / 6000; //������Ʈ�� �ӹ� �ð�
			int inactive = session.getMaxInactiveInterval() / 60; //���� ��ȿ �ð�
			boolean b_new = session.isNew(); //������ ó�� �����Ǿ����� true, ������ ����������̶�� false
		%>
		[1] ����ID�� [<%= session.getId() %>] �Դϴ�. <br><hr>
		[2] ����� ������Ʈ�� �ӹ� �ð��� <%= time_used %> ���Դϴ�. <br><hr>
		[3] ������ ��ȿ�ð��� <%= inactive %> ���Դϴ�. <br><hr>
		[4] ������ ���� �����������?<br>
		<%
			if(b_new)
				out.print(" ��! ���ο� ������ ��������ϴ�.");
			else 
				out.print(" �ƴϿ�! ���ο� ������ ������ �ʾҽ��ϴ�.");
		%>
	</body>
</html>