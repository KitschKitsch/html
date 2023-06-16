<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>🍪 쿠키 읽어오기</title>
	</head>
	<body>
		<h2>🍪 모든 쿠키 리스트</h2>
		<%
			Cookie[] cookies = request.getCookies();// 모든 쿠키 배열로 저장
			for (int i=0; i<cookies.length; i++) {
				String str = cookies[i].getName();
				out.println(str+"<br>");
				
				if(str.equals("cookieId")) {
					out.println("🍪 cookieId 존재: " + cookies[i].getValue());
					cookies[i].setMaxAge(0);// 보관시간 0초 : 삭제
					response.addCookie(cookies[i]);// 삭제  후 저장
				}
			}
		%>
		
		<h2>
			<a href="cookie_test.jsp">🍪 쿠키 재확인</a>
		</h2>
		
	</body>
</html>