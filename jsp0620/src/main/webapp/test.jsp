<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EL 태그</title>
	</head>
	<body>
		<h2>EL 태그: 스크립트릿과 연동X</h2>
		${1}
		${1+2}
		${1*2}
		${3/2}
		
		<%= request.getParameter("id") %>
		${param.id}
		
		<%= session.getAttribute("sessionId") %>
		${sessionId}<!-- ${sessionScope.sessionId} -->
		
		<hr>
		<h2>스크립트릿</h2>
		<% out.println(1+2); %>
		<hr>
		<h2>표현식</h2>
		<%= 1+2 %>
	</body>
</html>