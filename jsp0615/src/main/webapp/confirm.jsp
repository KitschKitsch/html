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
			String sbirth = request.getParameter("birth");/* 주소창에 '이름'으로 요청받은 파라미터값 저장(id X)  */
			int confirm = 2023 - Integer.parseInt(sbirth);
			if (confirm >= 18) {		
		%>
			<script>alert("주류판매 가능")
					//location.href = "https://hitejinro.com/index.asp";
			</script>
		<%
				out.println("성인("+confirm+"세): 판매가능");// 아래 리디렉션있으면 출력X
				//response.sendRedirect("https://hitejinro.com/index.asp"); // 데이터 처리 X 바로 보내기 
			} else { 
		%> 
			<script>alert("담배판매 불가")
					//location.href = "https://www.nosmokeguide.go.kr/index.do";
			</script>
		<%
				out.println("미성년("+confirm+"세): 판매불가");// 아래 리디렉션있으면 출력X
				//response.sendRedirect("https://www.nosmokeguide.go.kr/index.do"); // 데이터 처리 X 바로 보내기 
			}
		%>
	</body>
</html>