<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>확인</title>
	</head>
	<body>
		<%
			String sbirth = request.getParameter("birth");/* 요청받은 파라미터값 저장  */
			int confirm = 2023 - Integer.parseInt(sbirth);
			if (confirm >= 18) {		
		%>
			<script>alert("주류판매 가능")
					//location.href = "https://hitejinro.com/index.asp";
			</script>
		<%
				out.println("성인("+confirm+"세): 판매가능");
				//response.sendRedirect("https://hitejinro.com/index.asp");
			} else { 
		%> 
			<script>alert("담배판매 불가")
					//location.href = "https://www.nosmokeguide.go.kr/index.do";
			</script>
		<%
				out.println("미성년("+confirm+"세): 판매불가");
				//response.sendRedirect("https://www.nosmokeguide.go.kr/index.do");
			}
		%>
	</body>
</html>