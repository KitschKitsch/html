<%@page import="com.java.www.Member"%>
<%@page import="com.java.www.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Do Login</title>
	</head>
	<body>
		<%
			String userId = request.getParameter("id");// 인풋박스에서 받은 id
			String userPw = request.getParameter("pw");// 인풋박스에서 받은 pw
			
			// 객체선언
			MemberDao mdao = new MemberDao();
			// 로그인 메소드 호출
			Member member = mdao.selectLogin(userId, userPw);
			
			if (member!=null) {// 빈 객체가 아니면 
				session.setAttribute("sessionId", member.getId());// 세션에 ID 저장	
				session.setAttribute("sessionName", member.getName());// 세션에 이름 저장
		%> 
			<script>
				alert("로그인 되었습니다.");
				location.href = "main.jsp";
			</script> 
		<% } else { %>
			 <script>
				alert("아이디 또는 비밀번호가 일치하지 않습니다.");
				history.back();
				//location.href = "login.jsp";
			</script> 
		<%}%>
	</body>
</html>