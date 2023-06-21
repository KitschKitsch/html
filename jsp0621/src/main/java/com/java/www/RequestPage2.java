package com.java.www;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/r2")
public class RequestPage2 extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		
		// DAO 연결
		BoardDao bdao = new BoardDao();// 객체선언 
		Board board = bdao.selectOne(3);// 메소드 호출(한개/객체)
		ArrayList<Board> list = bdao.selectAll();// 메소드 호출(여러개/리스트)
		
		// request에 담기
		request.setAttribute("board", board); // board:board
		request.setAttribute("list", list);	// list:list
		
		// request 전송
		RequestDispatcher rd = request.getRequestDispatcher("j0621_02.jsp");// 목적지
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
