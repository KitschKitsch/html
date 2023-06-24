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
			String id = request.getParameter("id"); // form의 name이 "id"인 값 받기
			String name = request.getParameter("name"); // form의 name이 "name"인 값 받기
			
			if(id.equals("aaa")) {// "aaa" 이미 존재하면
				response.sendRedirect("j0615_08.jsp");// 아이디가 같다면 다시 돌아가! 안대! 못바꿔줘!
			} else {
				response.sendRedirect("join03_success.jsp?userId="+id+"&name="+name);// 데이터 보내는 두번째 방법! 파라미터에 실어보내기!
			}
		%>
	</body>
</html>