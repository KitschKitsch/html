<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 로그인</title>
	</head>
	<body>
		<h2>로그인</h2>
			<form action="j0619_loginOk.jsp" name="loginFrm" method="post">
				<label>아이디</label>
				<input type="text" name="id"><br>
				<label>비밀번호</label>
				<input type="password" name="pw"><br>
				<input type="submit" value="전송"><br>
			</form>
	</body>
</html>