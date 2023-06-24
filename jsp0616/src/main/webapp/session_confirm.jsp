<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>세션 재확인하기</title>
	</head>
	<body>
	<%
			// 세션 모두 읽기
			Enumeration enumeration = session.getAttributeNames();
			
			while(enumeration.hasMoreElements()) {// 이름만큼 반복 
				String sName = enumeration.nextElement().toString();
				String sValue = (String)session.getAttribute(sName);// Object라서 형변환
				out.println("name: " + sName + "<br>");
				out.println("value: " + sValue+  "<br>");
			}
			
			// 세션 모두 지우기
			session.invalidate();
		%>
	</body>
</html>
<!-- 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>섹션 모두 읽기</title>
	</head>
	<body>
		<%-- <%
			Enumeration enumeration = session.getAttributeNames();
			while(enumeration.hasMoreElements()){
			String sName =  enumeration.nextElement().toString();
			String sValue =  (String)session.getAttribute(sName);
			out.println("name"+sName + "<br>");
			out.println("value"+sValue+ "<br>");
				
			}
		session.invalidate(); //섹션 모두 지우기
		%> --%>
	</body>
</html>
-->



