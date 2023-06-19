<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!// 전역변수로 쓰기위해 느낌표!
	Connection conn;// SQL Developer 오픈
	// Statement stmt;// BDA 입력창
	PreparedStatement pstmt;
	ResultSet rs;// 쿼리문에 따른 결과
	String id,pw,name,phone;
	String query;
	
/* 	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "scott";
	String upw = "tiger";
	String query = "select * from member";// SQL문  */
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");// Developer 열기
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger"); // BDA 연결
				
				String userId = "AAA";
				String userPw = "1111";
				query = "SELECT * FROM MEMBER WHERE ID=? AND PW=?";
				
				pstmt = conn.prepareStatement(query);// 연결한 BDA 입력창에 쿼리입력
				pstmt.setString(1, userId);// 첫번째 물음표 자리에				
				pstmt.setString(2, userPw);// 두번째 물음표 자리에
				
				rs = pstmt.executeQuery();// 결과창
				
				while (rs.next()) { // 다음 데이터 있을 때까지 -> 5명 데이터
					id = rs.getString("id");
					pw = rs.getString("pw");
					name = rs.getString("name");
					phone = rs.getString("phone");
					
					out.println("아이디: " +id+ ", 패스워드: " +pw+ ", 이름: " +name+ ", 전화번호: " +phone+ "<br>");
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
	</body>
</html>