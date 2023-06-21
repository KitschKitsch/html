<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- core 라이브러리 -->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>doWrite 페이지</title>
	</head>
	<body>
		<c:if test="${result == 1 }">
			<script>alert("게시글이 등록되었습니다."); location.href="list.do";</script>
		</c:if>
		<c:if test="${result == 0 }">
			<script>alert("게시글 등록에 실패했습니다."); location.href=""</script>
		</c:if>
	</body>
</html>