<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- for, if, switch 등을 쓸 수 있는 Core 라이브러리 with EL태그 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:forEach var="member" items="${list}">
			<h3>아이디: ${member.id}</h3>
			<h3>비밀번호: ${member.pw}</h3>
			<h3>이름: ${member.name}</h3>
			<br>
		</c:forEach>
	</body>
</html>