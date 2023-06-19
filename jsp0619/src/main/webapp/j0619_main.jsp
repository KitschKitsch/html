<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>main</title>
	</head>
	<body>
		<h2>메인페이지</h2>
		<ul>
		<% if(session.getAttribute("sessionId")==null) {%>
			<h3>로그인을 해주세요.</h3>
			<li><a href="j0619_join.jsp">회원가입</a></li>
			<li><a href="j0619_login.jsp">로그인</a></li>
		<% }else { %>
			<h3><%=(String) session.getAttribute("sessionName") %> 님 환영합니다.</h3>
			<li><a href="boardList.jsp">게시판</a></li>
			<li><a href="j0619_memberList.jsp">회원정보목록</a></li>
			<li><a href="j0619_modify.jsp">회원정보수정</a></li>
			<li><a href="j0619_logout.jsp">로그아웃</a></li>
		<%}%>
		</ul>
	</body>
</html>