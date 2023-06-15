<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<% 
			String id = request.getParameter("id");
			
			if(id.equals("aaa")) {
				//response.sendRedirect("j0615_08.jsp");
			} else {
				response.sendRedirect("join03_success.jsp?userId="+id+"&name="+"홍길동");// 데이터 보내는 방법! 파라미터 사용! 이제 이름은 userId
			}
	
		%>
	</body>
</html>