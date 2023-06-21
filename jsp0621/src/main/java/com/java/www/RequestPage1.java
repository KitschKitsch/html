package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/r1")
public class RequestPage1 extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		
		request.setCharacterEncoding("utf-8");
		
		request.setAttribute("id", "admin");// request: 크기, 종류에 상관없이 모두 보낼 수 있음!
		request.setAttribute("pw", "1234");
		
		// response.sendRedirect("j0621_01.jsp");// but, HTML은 페이지 바뀌면 모든 데이터 삭제함;;;
		RequestDispatcher rd = request.getRequestDispatcher("j0621_01.jsp");// 목적지 설정
		rd.forward(request, response);// 이제 출발~
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
