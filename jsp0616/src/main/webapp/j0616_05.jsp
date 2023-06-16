<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Error</title>
	</head>
	<body>
		<%
			//out.println(10/1);
			out.println(10/0); /* 500 오류 */
		%>
		
		<a href="www">링크주소연결</a><!-- 404 오류 -->
	</body>
</html>