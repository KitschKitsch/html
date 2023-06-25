package com.java.www;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/r3")
public class RequestPage3 extends HttpServlet {
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		
		// DAO에 연결(DB접근)
		MemberDao mdao = new MemberDao();// 객체선언
		ArrayList<Member> list = mdao.selectAll();// 메소드호출
		
		// request에 담기
		request.setAttribute("list", list);// list:list
		
		// request 전송
		RequestDispatcher rd = request.getRequestDispatcher("j0621_03.jsp");// 목적지
		rd.forward(request, response);// 출발
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
