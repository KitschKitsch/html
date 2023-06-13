package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BirthConfirm")
public class BirthConfirm extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		// html의 form 모든 데이터는 request로 들어옴!
		String birth = request.getParameter("birth");//"birth"의 값을 birth로 저장(String뿐임!!!)

		// String -> int 형변환
		int num_birth = Integer.parseInt(birth);
		
		// 현재 연도에서 빼기
		Date today = new Date();
		int age = today.getYear()+1900 - num_birth;
		System.out.println(today.getYear()+1900);
		System.out.println("당신의 나이: " + age);
		
		String content = "";
		if(age>=18) {
			
			content="<h2 style='color:blue; font-weight:600;'>주류 판매 가능<h2>";
		} else {
			content="<h2 style='color:red; font-weight:600;'>미성년자: 주류 판매 금지<h2>";
		}
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>미성년자 확인</title></head>");
		writer.println("<body>");
		writer.println(content);
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}

}
