package com.java.www;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormMember")
public class FormMember extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 요청값 인코딩!!!
		System.out.println("doAction");
		String id = request.getParameter("id");// id가 id인 값
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobbys = request.getParameterValues("hobbys");// 체크박스? 복수개?! 배열로!! Values로!!
		
		System.out.printf("%s, %s, %s, %s \n", id,pw,name,gender);
		for (int i=0; i<hobbys.length; i++) {
			System.out.println(hobbys[i]);
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);// doAction 매소드 사용 
	} 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);// doAction 매소드 사용 
	}

}
