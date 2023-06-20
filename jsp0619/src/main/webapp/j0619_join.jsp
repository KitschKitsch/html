<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보입력</title>
	</head>
	<body>
		<h2>회원가입</h2>
		<form action="j0619_joinOk.jsp" method="post" name="memberFrm">
			<labe>아이디</labe>
			<input type="text" name="id"><br>
			<labe>비밀번호</labe>
			<input type="password" name="pw"><br>
			<labe>이름</labe>
			<input type="text" name="name"><br>
			<labe>전화번호</labe>
			<input type="text" name="phone"><br>
			
			<input type="submit" value="전송"><br>
		</form>
	</body>
</html>