<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %><!-- 에러페이지? ㅇㅇ맞음 -->
<% response.setStatus(200); %><!-- 여긴 이게 정상이야!  -->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>🚨error-404🚨</title>
		<style>
			* {margin: 0; padding: 0;}
			div{width: 70%; margin: 50px auto; padding: 30px; border: 1px solid #efefef;}
			img{width: 100%;}
		</style>
	</head>
	<body>
		<div>
			<a href="main.jsp"><img src="images/error404.jpg"></a>
		</div>
	</body>
</html>
