<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>모든 쿠키 확인</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies();// 모든 쿠키 받아오기
			if (cookies != null) {
				for (int i=0; i<cookies.length; i++) {
					out.println("🍪name: " + cookies[i].getName() + "<br>");
					out.println("🍪value: " + cookies[i].getValue() + "<br>");
					out.println("<hr>");
				}
			}
		%>
	</body>
</html>