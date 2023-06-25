package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.Board;

public class BListService implements BService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		// dao -> list
		BoardDao bdao = new BoardDao();// 객체선언
		ArrayList<Board> list = bdao.selectAll();// 메소드호출
		
		// request에 담기
		request.setAttribute("list", list);// list:list
	}

}
