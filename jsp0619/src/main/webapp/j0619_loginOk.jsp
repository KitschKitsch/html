<%@page import="com.java.www.Member"%>
<%@page import="com.java.www.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 확인</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
		
			String userId = request.getParameter("id");
			String userPw = request.getParameter("pw");
			
			MemberDao mdao = new MemberDao();
			// 로그인 확인 메소드 호출
			Member member = mdao.selectLogin(userId, userPw);
			
			if(member!=null) {
				session.setAttribute("sessionId", member.getId());
				session.setAttribute("sessionName", member.getName());
		%>
			<script>
				alert("로그인 되었습니다.");
				location.href="j0619_main.jsp";
			</script>
		<% } else { %>
			<script>
				alert("아이디 또는 패스워드가 일치하지 않습니다.");
				history.back();
			</script>
		<%}%>	
			
			
	</body>
</html>