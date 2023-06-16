<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>세션 읽어오기</title>
		<style>
			table{width: 400px; margin: 0 auto; text-align: center;}
			table,th,td{border: 1px solid black; border-collapse: collapse;}
			th{height: 30px; background: #efefef;}
			td{width: 200px; height: 40px;}
		</style>
	</head>
	<body>
		<%
			//  세션 읽어오기(Objet라서 형변환!)
			String sessionId = (String)session.getAttribute("sessionId");
			String sessionNickName = (String)session.getAttribute("sessionNickName");
			String sessionName = (String)session.getAttribute("sessionName");
		%>
		
		<!-- 세션을 표로 출력 -->
		<table>
			<tr>
				<th>이름</th>
				<th>값</th>
			</tr>
			<tr>
				<td>sessionId</td>
				<td><%= sessionId %></td>
			</tr>
			<tr>
				<td>sessionNickName</td>
				<td><%= sessionNickName %></td>
			</tr>
			<tr>
				<td>sessionName</td>
				<td><%= sessionName %></td>
			</tr>
		</table>
		
		<%	
			// 세션 삭제
			session.removeAttribute("sessionId");// 한개씩 삭제
			session.removeAttribute("sessionNickName");
			//session.invalidate();// 전체 삭제
		%>
		
		<h2>
			<a href="session_confirm.jsp">세션 재확인</a>
		</h2>
	</body>
</html>