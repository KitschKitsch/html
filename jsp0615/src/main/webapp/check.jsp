<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>중복체크</title>
	</head>
	<body>
		<% 
			String id = request.getParameter("id");
			
			if(id.equals("aaa")) {
				response.sendRedirect("j0615_08.jsp");// 아이디가 같다면 다시 돌아가! 안대! 못바꿔줘!
			} else {
				response.sendRedirect("join03_success.jsp?userId="+id+"&name="+"홍길동");// 데이터 보내는 방법! 파라미터 사용!
			}
	
		%>
	</body>
</html>