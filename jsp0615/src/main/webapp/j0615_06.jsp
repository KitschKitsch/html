<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <%
	  	String uri = request.getRequestURI();
	  	int cPathLength = request.getContextPath().length();
		String fileName = uri.substring(cPathLength+1);
	  	
		// 얘네 3개 + getParameter, getParameterValues중요!
	  	out.println("url : "+request.getRequestURI()+"<br>");
	  	out.println("uri : "+request.getRequestURI()+"<br>");
	  	out.println("contextPath : "+request.getContextPath()+"<br>");
	  	
	  	out.println("서버 : "+request.getServerName()+"<br>");
	  	out.println("포트번호 : "+request.getServerPort()+"<br>");
	  	out.println("요청방식 : "+request.getMethod()+"<br>");
	  	out.println("프로토콜 : "+request.getProtocol()+"<br>");
	  	out.println("ip : "+request.getRemoteAddr()+"<br>");
	  	out.println("파일명 : "+(fileName)+"<br>");
	  %>
	</body>
</html>







