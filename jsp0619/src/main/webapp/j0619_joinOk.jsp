<%@page import="com.java.www.Member"%>
<%@page import="com.java.www.MemberDao"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 확인</title>
	</head>
	<body>
		<%	
			request.setCharacterEncoding("utf-8");
		
			String userId = request.getParameter("userId");
			String userPw = request.getParameter("userPw");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			
			// 객체선언
			MemberDao mdao = new MemberDao();
			
			// 회원정보입력 메소드 호출 (참조변수명.메소드명)
			int result = mdao.insertMember(new Member(userId,userPw,name,phone));
			
		%>
		
		<script>
			if(<%=result %> == 1){
				alert("회원가입이 완료되었습니다.");
				location.href="j0619_main.jsp";
			} else {
				alert("데이터가 올바르지 않습니다.");
				history.back;
			}
			
		</script>
	</body>
</html>