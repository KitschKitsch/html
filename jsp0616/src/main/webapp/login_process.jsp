<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 쿠키</title>
	</head>
	<body>
		<!-- 아이디/PW를 쿠키에 저장하고 쿠키 출력 -->
		<%	
			// 데이터 받아오기(form으로부터)
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			if (!(id.equals("admin") && pw.equals("1111"))) {
				response.sendRedirect("login_cookie.jsp?idCheck=0");
			}
			
        	// 화면출력
        	out.println("id: "+id+"<br>");
        	out.println("pw: "+pw+"<br>");
		
			// 쿠키 객체 생성
        	Cookie cid = new Cookie("cid", id);
        	Cookie cpw = new Cookie("cpw", pw);
        	
			// 쿠키 보관기간 설정        	
        	cid.setMaxAge(60*60);
        	cpw.setMaxAge(60*60);
        	
        	// 쿠키 저장
        	response.addCookie(cid);
        	response.addCookie(cpw);
        	
        %>
        
        <a href="login_confirm.jsp">쿠키 확인</a>
	</body>
</html>