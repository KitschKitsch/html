<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>forward</title>
	</head>
	<body>
		<h2>1번째 페이지입니다.</h2>
		<%-- <jsp:forward page="top.jsp" /> --%><!-- 현재 주소 유지하면서 페이지 전환 -->
		<% // response.sendRedirect("top.jsp"); %><!-- 아예 새로운 주소로 보냄 -->
		<script>location.href="top.jsp"</script><!-- 아예 새로운 주소로 보냄 -->
	</body>
</html>