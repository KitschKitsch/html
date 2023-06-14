<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 지시자: 페이지속성 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table,th,td{border: 1px solid black; border-collapse: collapse;}
			td{width: 120px; height: 30px; text-align: center;}
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>i</th>
				<th>sum</th>
			</tr>
			
		<% /* 스크립트릿: JAVA코드 */
			int sum=0;
			for(int i=1; i<=100; i++) {
				sum = sum + i;
		%>
		<!---------------------------------->						
				<tr>
				<td><%out.println(i); %></td>
				<td><%out.println(sum); %></td>
				</tr>
		<%
		/*----------------------------------*/				
			}
			out.println("1부터 100까지 합: " + sum);
		%>
		</table>
	</body>
</html>