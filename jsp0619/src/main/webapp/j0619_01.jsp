<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!// DB연결
	Connection conn;// SQL Developer 오픈
	PreparedStatement pstmt;// BDA 입력창
	ResultSet rs;// 쿼리문에 따른 결과
	
	// 컬럼 타입 선언
	int empno, mgr, deptno;
	String ename, job, hiredate;
	double sal, comm;
	
	String query;
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EMP List</title>
		<style>
			table,th,td{border: 1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
		<h2>직원 명단</h2>
		<table>
			<tr>
				<th>사원번호</th>
				<th>사원이름</th>
				<th>직급</th>
				<th>직속상관</th>
				<th>입사일</th>
				<th>연봉</th>
				<th>인센티브</th>
				<th>부서번호</th>
			<tr>
			
		<%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");// Developer 열기
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger"); // BDA 연결
				
				// 쿼리문
				query = "SELECT * FROM EMP";
				
				pstmt = conn.prepareStatement(query);// 연결한 BDA 입력창에 쿼리입력
				rs = pstmt.executeQuery();// 결과창
				
				while (rs.next()) { // 다음 데이터 있을 때까지
					empno = rs.getInt("empno");
					ename = rs.getString("ename");
					job = rs.getString("job");
					mgr = rs.getInt("mgr");
					hiredate = rs.getString("hiredate");
					sal = rs.getDouble("sal");
					comm = rs.getDouble("comm");
					deptno = rs.getInt("deptno");
						
					/* out.print(" empno:" +empno+
							  " ename:"	+ename+
							  " job:" +job+
							  " mgr:" +mgr+
							  " hiredate:" +hiredate+
							  " sal:" +sal+
							  " comm:" +comm+
							  " deptno:" +deptno +"<br>"); */
					
					%>
					<!-- HTML 구문 -->
					<tr>
						<td><%=empno %></td>
						<td><%=ename %></td>
						<td><%=job %></td>
						<td><%=mgr %></td>
						<td><%=hiredate %></td>
						<td><%=sal %></td>
						<td><%=comm %></td>
						<td><%=deptno %></td>
					</tr>				
					
					<%
				}
			} catch(Exception e) {
				e.printStackTrace();
				
			} finally {
				
				try {
					if(rs!=null) rs.close();// 연결되어 있는 상태면 닫기
					if(pstmt!=null) pstmt.close();
					if(conn!=null) conn.close();
					
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		%>
		</table>
	</body>
</html>