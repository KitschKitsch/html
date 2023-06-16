<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 체크</title>
	</head>
	<body>
		<%
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			if (id.equals("aaa") && pw.equals("1111")) {// DB에서 검색
				session.setAttribute("sessionId", "aaa");
				session.setAttribute("sessionName", "홍길동");// 민감한 정보(pw)는 세션에 넣지 않는다!
				session.setAttribute("sessionNickName", "길동스");
				response.sendRedirect("main.jsp");
			} else {// aaa:1111이 아닐때!
				response.sendRedirect("login.jsp?logCheck=0");
			}
		%>
	</body>
</html>