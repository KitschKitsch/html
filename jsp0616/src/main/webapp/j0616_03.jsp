<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>🍪쿠키🍪</title>
	</head>
	<body>
		<% 
			Cookie cookieId = new Cookie("cookieId","admin");// userId:admin 저장
			Cookie cookieCheckbox = new Cookie("cookieCheckbox","1");// idCheckbox:1 저장
			
			cookieId.setMaxAge(60*60);// 60초*60 = 1시간
			cookieCheckbox.setMaxAge(60*60);// 60초*60 = 1시간
			
			response.addCookie(cookieId);// 사용자에 쿠키 저장
			response.addCookie(cookieCheckbox);// 사용자에 쿠키 저장
		%>
		<h2>
			<a href="cookie_get.jsp">🍪 쿠키 읽어오기</a>
		</h2>
	</body>
</html>