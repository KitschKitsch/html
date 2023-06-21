<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>뷰페이지(M'V'C)</title>
	</head>
	<body>
		<h2>dispatcher 페이지</h2>
		
		<h3><%= request.getAttribute("id") %></h3><!-- RequestPage1(서블릿)에서 id 받아오기 -->
		<h3><%= request.getAttribute("pw") %></h3>
		<hr>
		<h3>${id }</h3><!-- EL태그 admin -->
		<h3>${requestScope.id }</h3><!-- admin  // form에서 넘어오는 param은 다써야함... -->
	</body>
</html>