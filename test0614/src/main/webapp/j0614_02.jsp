<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table{width: 750px; margin: 30px auto;}
			table,th,td{border: 1px solid black; border-collapse: collapse; text-align: center;}
			th,td{width: 150x; height: 30px;}
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>단</th>
				<th>*</th>
				<th>수</th>
				<th>=</th>
				<th>결과</th>
			</tr>
		<% 
			for(int i=1; i<=9; i++){
		%>
			<tr>
				<th colspan="5"><%=i %>단</th>
			</tr>
		<%
				for(int j=1; j<=9; j++) {
		%>
			<tr>
				<td><%= i %></td><!-- 값만 출력할 경우 '표현식'으로 간단하게! -->
				<td>*</td>
				<td><%= j %></td>
				<td>=</td>
				<td><%= i*j %></td>
			</tr>
		<% 
				}
			}
		%>
		</table>
	</body>
</html>