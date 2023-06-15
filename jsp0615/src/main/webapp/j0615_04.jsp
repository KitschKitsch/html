<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %><!-- 지시자(속성지정) -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp: html에 java 쓰기</title>
		<style>
			* {padding: 0; margin: 0;}
			table{width: 550px; margin: 30px auto; text-align: center;}
			table,td{border: 1px solid black; border-collapse: collapse;}
			td{height: 35px; width: 100px;}
		</style>
	</head>
	<body>
		<!-- 선언식(변수나 메소드를 선언) -->
		<%! // servlet, class에서 주로 사용 
		int num = 1;
		int num2 = 5;
		int total;
		
		private int sum(int a, int b) { // 1,10 -> 1~10까지의 합
			for (int i=a; i<=b; i++) {
				total += i; 
			}
			return total;
		}
		%>
		
		
		<% 
			int[] arr = {10, 20, 30};
		%>
		
		<table>
			<tr>
				<td><%= num %></td>
				<td><%= num2 %></td>
				<td><%= sum(num,num2) %></td>
			</tr>
		</table>
		
	</body>
</html>