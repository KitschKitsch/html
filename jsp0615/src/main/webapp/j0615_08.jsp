<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
	</head>
	<body>
		<form action="check.jsp" method="post"><!-- check창으로 request 보냄 -->
			<label>아이디</label>
			<input type="text" name="id"><br>
			<input type="submit" value="전송">
		</form>
	</body>
</html>