<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP는 Java in HTML</title>
		<style>
			* {padding: 0; margin: 0;}
			table{width: 550px; margin: 30px auto; text-align: center;}
			table,td{border: 1px solid black; border-collapse: collapse;}
			td{height: 35px; width: 100px;}
		</style>
	</head>
	<body>
		
		<!-- HTMl 주석: 외부 노출 됨!!! -->
		<%-- JSP 주석: 외부 노출 안됨!!! --%>
		
		<table>
		<%
			for(int i=2;i<=9;i++){
				for(int j=1; j<=9; j++) {
		%>
			<tr>
				<td><% out.println(i); %></td><!-- HTML안에서 JAVA구문 쓰는 스트릿트릿 -->
				<td>*</td>
				<td><%= j %></td>
				<td>=</td>
				<td><%= i*j %></td><!-- 간단한 '표현식'(세미콜론X)  -->
			</tr>
		<%
				}
			}
		%>
		</table>
		
		
		<%
			for(int i=2; i<10; i++) {
				for(int j=1; j<10; j++){
			
				}
			}
		%>
		
		<%-- JSP 주석 
		
		<%
			for(int i=2;i<=9;i++){
				for(int j=1; j<=9; j++) {
		%>
			<tr>
				<td><% out.println(i); %></td><!-- HTML안에서 JAVA구문 쓰는 스트릿트릿 -->
				<td>*</td>
				<td><% out.println(j); %></td>
				<td>=</td>
				<td><%= i*j %></td><!-- 간단한 '표현식'  -->
			</tr>
		<%
				}
			}
		%>
		
		out.println("<table>");
		for(int i=2; i<10; i++) {
			for(int j=1; j<10; j++){
				//out.println(i+"*"+j+"="+(i*j)+"<br>");// println이지만 태그 안에 있는거기 때문에! <br>이 있어야! 아래로 출력됨!
				out.println("<tr>");
				out.println("<td>"+i+"</td>");
				out.println("<td>*</td>");
				out.println("<td>"+j+"</td>");
				out.println("<td>=</td>");
				out.println("<td>"+(i*j)+"</td>");
				out.println("</tr>");
			}
		}
		out.println("/<table");
			
		<table>
			<tr>
				<td>2</td>
				<td>*</td>
				<td>1</td>
				<td>=</td>
				<td>2</td>
			</tr>
			<tr>
				<td>2</td>
				<td>*</td>
				<td>1</td>
				<td>=</td>
				<td>2</td>
			</tr>
		</table> --%>
		
	</body>
</html>