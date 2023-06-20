<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일 다운로드</title>
	</head>
	<body>
		<%	
			// String uploadPath = request.getRealPath("fileFolder");// 저장경로(서버)
			String uploadPath = "C:/upload";// 저장경로
			
			int size = 10*1024*1024; // 사이즈 10MB
			
			MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
			
			String title = multi.getParameter("title");
			String fileName = multi.getFilesystemName("bfile");// 업로드 되는 이름(다운로드 받는 이름)
			String originName = multi.getOriginalFileName("bfile");// 원본 이름 
		%>
		
		<h2>제목: <%= title %></h2>
		<h2>파일명: <%= fileName %></h2>
		<h2>원본명: <%= originName %></h2>
	</body>
</html>