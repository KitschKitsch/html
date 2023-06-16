<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>세션 저장하기</title>
	</head>
	<body>
		<% 
			// 세션 저장하기
			session.setAttribute("sessionId", "admin");
			session.setAttribute("sessionNickName", "길동스");
			session.setAttribute("sessionName", "홍길동");
		%>
		<h2>
			<a href="session_get.jsp">세션 읽어오기</a>
		</h2>
	</body>
</html>