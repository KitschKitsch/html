package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.BDeleteService;
import com.java.www.service.BEditService;
import com.java.www.service.BListService;
import com.java.www.service.BService;
import com.java.www.service.BViewService;
import com.java.www.service.BWriteService;

@WebServlet("*.do")// 확장자가 .do인 파일들 모두 여기로!
public class FController extends HttpServlet {
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		String page = "";
		BService bservice = null;
		
		String uri = request.getRequestURI();// 프로젝트명/파일명	   /jspMall/login.do
		String contextPath = request.getContextPath();// 프로젝트명   /jspMall
		String fileName = uri.substring(contextPath.length());// 파일명   /login.do	
		System.out.println("호출 파일: " + fileName);
			
		
		// 메인[View] -> [Controller -> 서비스(서블릿)] -> DAO 메소드[Model] -> [서비스(메소드 결과 request로) -> Controller] -> 페이지로 연결[View]
		if (fileName.equals("/main.do")) {
			page = "main.jsp";
		
		}	else if(fileName.equals("/list.do")) {
			// board 테이블의 list -> request
			bservice = new BListService();// 인터페이스의 참조변수로 자식객체선언(다형성)
			bservice.execute(request, response);// 메소드 결과값(request)
			page = "list.jsp";
			
		} else if (fileName.equals("/view.do")) {
			bservice = new BViewService(); // board 게시글 1개 보기
			bservice.execute(request, response);
			page = "view.jsp";
		
		} else if (fileName.equals("/write.do")) {
			page = "write.jsp";
		
		} else if (fileName.equals("/doWrite.do")) {
			bservice = new BWriteService(); // board 게시글 1개 저장
			bservice.execute(request, response);
			page = "doWrite.jsp";
			
		} else if (fileName.equals("/delete.do")) {
			bservice = new BDeleteService(); // board 게시글 삭제
			bservice.execute(request, response);
			page = "doDelete.jsp";
		
		} else if (fileName.equals("/edit.do")) {
			bservice = new BViewService(); // board 게시글 1개 보기
			bservice.execute(request, response);
			page = "edit.jsp";
		
		} else if (fileName.equals("/doEdit.do")) {
			bservice = new BEditService(); // board 게시글 1개 수정
			bservice.execute(request, response);
			page = "doEdit.jsp";
		}
		
		// 포워딩
		// request 전송
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
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