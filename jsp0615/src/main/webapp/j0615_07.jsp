<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>다른 주소로 보내기(sendRedirect)</title>
	</head>
	<body>
		<h2>년도를 입력하세요.</h2>
		<form action="confirm.jsp" method="get"><!-- confirm 창으로 request 보냄  -->
			<label>출생년도</label><br>
			<input type="text" name="birth"><br>
			<input type="submit" value="확인"><br>
		</form>
	</body>
</html>