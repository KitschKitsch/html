package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
    
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction!");

		request.setCharacterEncoding("utf-8"); // !!! post방식은 매번 인코딩 필요함 !!!
		
		String name = request.getParameter("name");// name값을 name으로 저장
		String gender = request.getParameter("gender");// gender 값을 gender로 저장
		String[] hobbys = request.getParameterValues("hobbys");// 체크박스는 값이 복수개! getParameterValues! 배열!
		
		System.out.println("name:" + name);
		System.out.println("gender: " + gender);
		System.out.println("hobbys: " + hobbys);// 주소값나옴!!
		
		for (int i=0; i<hobbys.length; i++) {
			System.out.println("hobbys: " + hobbys[i]);
		}
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html><head><title>상단탭</title></head>");
		writer.println("<body>");
		writer.println("<h2>hello servlet!?</h2>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get 방식으로 접근 - url 직접접근, form으로 접근(method가 get)
		System.out.println("doGet!");
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post 방식으로 접근 - form으로 접근(method가 post)
		System.out.println("doPost!");
		doAction(request, response);
	}

}
