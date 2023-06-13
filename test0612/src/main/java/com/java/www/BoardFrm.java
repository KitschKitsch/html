package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BoardFrm")
public class BoardFrm extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		
		// request: 요청받기
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println("제목: "+title);
		System.out.println("내용: "+content);
		
		// response: 응답하기
		response.setContentType("text/html; charset=utf-8");// html, utf-8로 보내기
		PrintWriter writer = response.getWriter();// 문자응답을 위한 출력스트림
		writer.println("<html>");
		writer.println("<head><title>게시판</title><head>");
		writer.println("<body>");
		writer.println("<p>"+title+"</p>");
		writer.println("<p>"+content+"</p>");
		writer.println("<body>");
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
