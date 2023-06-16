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
			<input type="text" name="id"><br><!-- 데이터 보내는 첫번째 방법! form으로 보내기  -->
			<label>이름</label>
			<input type="text" name="name"><br>
			<input type="submit" value="전송">
		</form>
	</body>
</html>