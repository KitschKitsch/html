package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BService {// 인터페이스를 거쳐 데이터 주고받기 => 유지보수 용이
	
	void execute(HttpServletRequest request, HttpServletResponse response);
	
}
