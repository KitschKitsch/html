<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- for, if, switch 등을 쓸 수 있는 Core 라이브러리 with EL태그 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><!-- 포맷 바꿔주는 fmt 라이브러리(참고) -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:set var="varName" value="홍길동" /><!-- 변수할당 -->
		<% String name="이순신"; %>
		<h3>이름: <c:out value="${varName}" /></h3><!-- 변수출력 -->
		<h3>이름: ${varName} </h3><!-- 변수출력 -->
		<h3>스크립트릿 이름: ${name}</h3><!-- 스크립트릿과 EL태그 연동 X -->
		
		<hr>
		<!-- 조건문 -->
		<c:if test="${varName == '홍길동'}">
			<h2>정답입니다. 홍길동</h2>
		</c:if>

		<c:if test="${varName != '홍길동'}">
			<h2>오답입니다. ${varName} 입니다.</h2>
		</c:if>
		
		<hr>
		<!-- 조건문(스크립트릿) -->
		<% if(name.equals("홍길동")) {%>
				<h2>정답입니다. 홍길동</h2>
		<%	} else { %>
				<h2>오답입니다.<%= name %> 입니다.</h2>
		<%}%>
		
		<hr>
		<!-- 반복문 -->
		<c:forEach var="i" begin="1" end="10" step="1"><!-- 0~10(포함)까지 1씩 증가  -->
			${i}<br>
		</c:forEach>
		
		<hr>
		<h3>board 객체(1개)</h3>
		<h3>${board.bno}</h3>
		<h3>${board.id}</h3>
		<h3>${board.btitle}</h3>
		
		<hr>
		<h3>board 객체(여러개)</h3>
		<c:forEach var="b" items="${list}">
			<h3>${b.bno}</h3>		
			<h3>${b.id}</h3>		
			<h3>${b.btitle}</h3>
			<br>		
		</c:forEach>
		
		
	</body>
</html>