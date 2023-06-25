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
		<h3>${requestScope.id }</h3><!-- admin  //  id가 request에만 있으면 생략가능!
													세션에도 id가 있으면 앞에 내장객체명Scop0e. 붙여줘야함!
													파라미터로 전달받은 값은 param. 써야함! -->
	</body>
</html>