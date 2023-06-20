package com.java.www;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
	
	Context context = null;
	DataSource dataSource = null;
	Connection conn;// SQL Developer 오픈
	PreparedStatement pstmt;// BDA 입력창
	ResultSet rs;// 쿼리문에 따른 결과
	
	// 컬럼 타입 선언
	String id, pw, name, phone;
	Member member;
	String query;
	int result;
	
	
	
	// 커넥션 연결 메소드 - conn
	private Connection getConnection() {
		Connection connection = null;
		try {
			context = new InitialContext();
	    	dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
	    	connection = dataSource.getConnection();
		} catch (Exception e) {e.printStackTrace();}
		return connection;
	}
	
	
	
	// 회원정보입력 메소드--------------------------------------------------//
	public int insertMember(Member member) {
		try {
	    	conn = getConnection();
	    	
	    	query = "INSERT INTO MEMBER VALUES (?,?,?,?)";
	    	pstmt = conn.prepareStatement(query);// 쿼리문 저장
	    	
	    	pstmt.setString(1, member.getId());
	    	pstmt.setString(2, member.getPw());
	    	pstmt.setString(3, member.getName());
	    	pstmt.setString(4, member.getPhone());
	    	
	    	// 성공: 1, 실패: 0
	    	result = pstmt.executeUpdate();//쿼리문 입력 -insert, update, delete  executeQuery()-select
	    	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null) pstmt.close();	
				if(conn!=null) conn.close();	
			} catch (Exception e2) {e2.printStackTrace();}
		}// finally
		return result;
	}// insertMember
	
	
	
	// 로그인 확인 메소드--------------------------------------------------//
	public Member selectLogin(String userId, String userPw) {
		System.out.println("userId: " + userId);
		Member member = null;
		try {
			conn = getConnection();
			
	    	query = "SELECT * FROM MEMBER WHERE ID=? AND PW=?";
	    	pstmt = conn.prepareStatement(query);// 쿼리문 (임시저장) 
	    	pstmt.setString(1, userId);
	    	pstmt.setString(2, userPw);
	    	
	    	rs = pstmt.executeQuery();// 쿼리문 실행, 결과
	    	
	    	while (rs.next()) {
	    		id = rs.getString("id");
	    		pw = rs.getString("pw");
	    		name = rs.getString("name");
	    		phone = rs.getString("phone");
	    		member = new Member(id,pw,name,phone);
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
		return member;
	}// selectLogin
	
	
	
	// 회원정보목록 메소드--------------------------------------------------//
	public ArrayList<Member> selectMember() {
		ArrayList<Member> list = new ArrayList<>();
		try {
			conn = getConnection();
			
	    	query = "SELECT * FROM MEMBER";
	    	pstmt = conn.prepareStatement(query);// 쿼리문 저장
	    	rs = pstmt.executeQuery();// 쿼리문 실행, 결과
	    	
	    	while (rs.next()) {
	    		id = rs.getString("id");// 컬럼명
	    		pw = rs.getString("pw");
	    		name = rs.getString("name");
	    		phone = rs.getString("phone");
	    		list.add(new Member(id,pw,name,phone));
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
		return list;
	}// selectMember
	
	
	
	// 회원정보검색 메소드--------------------------------------------------//
	public Member selectMemberOne(String sessionId) {
		Member member = null;
		try {
			conn = getConnection();
			
	    	query = "SELECT * FROM MEMBER WHERE ID=?";
	    	pstmt = conn.prepareStatement(query);// 쿼리문 저장
	    	pstmt.setString(1, sessionId);
	    	rs = pstmt.executeQuery();
	    	
	    	while (rs.next()) {
	    		id = rs.getString("id");
	    		pw = rs.getString("pw");
	    		name = rs.getString("name");
	    		phone = rs.getString("phone");
	    		member = new Member(id,pw,name,phone);
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
		return member;
	}// selectMemberOne
	
	
		
	//회원정보수정 메소드--------------------------------------------------//
	public int updateMember(Member member) {
		try{
	    	 conn = getConnection();
	    	 query = "update member set pw=?,name=?,phone=? where id=?";
	    	 pstmt = conn.prepareStatement(query);
	    	 pstmt.setString(1, member.getPw());
	    	 pstmt.setString(2, member.getName());
	    	 pstmt.setString(3, member.getPhone());
	    	 pstmt.setString(4, member.getId());

	    	 //성공-1, 실패-0
	    	 result = pstmt.executeUpdate(); //executeUpdate()-INSERT,UPDATE,DELETE   executeQuery()-SELECT

	    }catch(Exception e){
	    	e.printStackTrace();
	    }finally{
	    	try{
	    		if(pstmt!=null) pstmt.close();
	    		if(conn!=null) conn.close();
	    	}catch(Exception e2){e2.printStackTrace();}
	    }
		return result;
	}//updateMember
}