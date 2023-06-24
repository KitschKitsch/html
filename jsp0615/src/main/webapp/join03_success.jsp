<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style_header.css">
		<link rel="stylesheet" type="text/css" href="css/style_join03_success.css">
		<link rel="stylesheet" type="text/css" href="css/style_footer.css">
		<title>회원가입 - 회원가입완료</title>
	</head>
	<body>
	
	<!-- <top> 있었음..! -->	
	<%@include file="jtop.jsp" %>
	<!-- 지시자로 불러오기 -->	
		
		<section>
			<div id="subBanner"></div>
			<div id="locationN">
				<ul>
					<li>HOME</li>
					<li>회원가입</li>
					<li>회원가입완료</li>
				</ul>
			</div>
			
			<div id="sub_top_area">
				<h3>회원가입</h3>
			</div>
			
			<div id="join_step_div">
				<ul>
					<li>
						<span>STEP.1</span>
						<p>약관동의</p>
					</li>
					<li>
						<span>STEP.2</span>
						<p>회원정보</p>
					</li>
					<li>
						<span>STEP.3</span>
						<p>회원가입완료</p>
					</li>
				</ul>
			</div>
			
			<div id="join_success_div">
				<p>
					감사합니다.
					<strong>님! 회원가입이 완료되었습니다.</strong>
					<strong>가입한 ID: 
						<% String userId = request.getParameter("userId"); // url의 파라미터값 받아오기
							out.println(userId);
						%>
					</strong>
					<strong>이름: 
						<% String name = request.getParameter("name"); // url의 파라미터값 받아오기
							out.println(name);
						%>
					</strong>
						   
					
				</p>
			</div>	
				
				
		</section>
		
		<!-- <footer> 있었음..! -->	
		<%@include file="jfooter.jsp" %>
		<!-- 지시자로 불러오기 -->
		
	</body>
</html>