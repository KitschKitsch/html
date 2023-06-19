<%@page import="com.java.www.Member"%>
<%@page import="com.java.www.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String sessionId = (String) session.getAttribute("sessionId");
	String id,pw,name,phone;
	MemberDao mdao = new MemberDao();
	Member member = mdao.selectMemberOne(sessionId);
	
		id = member.getId();
		pw = member.getPw();
		name = member.getName();
		phone = member.getPhone();
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
	</head>
	<body>
		<h2>회원정보 수정</h2>
		<form action="j0619_modifyOk.jsp" method="post" name="memberFrm">
			<labe>아이디</labe>
			<input type="text" name="id" value="<%=id%>" readonly><br>
			<labe>비밀번호</labe>
			<input type="password" name="pw" value="<%=pw%>"><br>
			<labe>이름</labe>
			<input type="text" name="name" value="<%=name%>"><br>
			<labe>전화번호</labe>
			<input type="text" name="phone" value="<%=phone%>"><br>
			
			<input type="submit" value="전송">
			<button type="button"><a href="j0619_main.jsp">메인</a></button>
		</form>
	</body>
</html>