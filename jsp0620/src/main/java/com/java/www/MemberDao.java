package com.java.www;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
	
	private Context context = null;
	private DataSource dataSource = null;
	private Connection conn = null;
	private Member member = null;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String id,pw,name,phone,gender,hobby;
	private String query;
	
	
	
	// 커넥션 연결 메소드--------------------------------------------------//
	private Connection getConnection() {
		Connection connection = null;
		try {
			context = new InitialContext();
	    	dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
	    	connection = dataSource.getConnection();
		} catch (Exception e) {e.printStackTrace();}
		return connection;
	}
	
	
	
	// 로그인 메소드--------------------------------------------------//
	public Member selectLogin(String userId, String userPw) {// '1명'의 데이터는 '객체'로 전달
		try {
			conn = getConnection();// 연결
			query = "SELECT * FROM MEMBER WHERE ID=? AND PW=?";
			pstmt = conn.prepareStatement(query);// 쿼리문 (임시저장)
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			rs = pstmt.executeQuery();// 쿼리문 실행, 결과
			
			while (rs.next()) {// 다음요소 있을 때 까지 반복
				id = rs.getString("ID");// 컬럼 데이터 가져오기
				pw = rs.getString("PW");
				name = rs.getString("NAME");
				phone = rs.getString("PHONE");
				gender = rs.getString("GENDER");
				hobby = rs.getString("HOBBY");
				member = new Member(id,pw,name,phone,gender,hobby);// 멤버 객체에 담기
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
			}// finally
		return member;// 멤버 객체로 반환
	}// selectLogin

}
