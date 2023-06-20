<%@page import="com.java.www.BoardDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 글쓰기 완료</title>
	</head>
	<body>
		<%
			String uploadPath = "C:/upload"; // upload 폴더에
			int size = 10*1024*1024;// 10MB
			
			MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
			
			String userId = (String) session.getAttribute("sessionId");
			String userBtitle = multi.getParameter("btitle");// 저장되는 제목
			String userBcontent = multi.getParameter("bcontent");// 저장되는 내용
			String userBfile = multi.getFilesystemName("bfile");// 저장되는 이름
			
			BoardDao bdao = new BoardDao();
			int result = bdao.insertOne(userId, userBtitle, userBcontent, userBfile);
		%>
		<script>
			alert("게시글이 등록되었습니다.");
			location.href = "notice_list.jsp";
		</script>
	</body>
</html>