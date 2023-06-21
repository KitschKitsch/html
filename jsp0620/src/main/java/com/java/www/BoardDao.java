package com.java.www;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDao {
	
	private Context context;
	private DataSource dataSource;
	private Connection conn;
	private Board board;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private int bno, bhit, bgroup, bstep, bindent;
	private String id, btitle, bcontent, bfile;
	private Date bdate;
	
	private String query;
	private int result;
	
	
	
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
			
			
			
	// 게시글 전체 조회 메소드(어레이리스트) --------------------------------------------------//
	public ArrayList<Board> selectAll() {// '여러개'는 '어레이리스트'로 받기
		ArrayList<Board> list = new ArrayList<>();
		try {
			conn = getConnection();// DB연결
			query = "SELECT * FROM BOARD";
			pstmt = conn.prepareStatement(query);// 쿼리문 임시저장
			rs = pstmt.executeQuery();// 쿼리문 실행, 결과
			
			while (rs.next()) {// 다음 요소가 있을 때까지 반복
				bno = rs.getInt("BNO");// 컬럼에서 가져오기
				bhit = rs.getInt("BHIT");
				bgroup = rs.getInt("BGROUP");
				bstep = rs.getInt("BSTEP");
				bindent = rs.getInt("BINDENT");
				id = rs.getString("ID");
				btitle = rs.getString("BTITLE");
				bcontent = rs.getString("BCONTENT");
				bfile = rs.getString("BFILE");
				bdate = rs.getDate("BDATE");
				
				list.add(new Board(bno, id, btitle, bcontent, bdate, bhit, bgroup, bstep, bindent, bfile));
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
	}// selectAll
	
	
	
	// 게시글 1개 조회 메소드(객체) --------------------------------------------------//
	public Board selectOne(int userBno) {// '1개'는 '객체'로 받기
		
		try {
			conn = getConnection();// DB연결
			query = "SELECT * FROM BOARD WHERE BNO=?";
			pstmt = conn.prepareStatement(query);// 쿼리문 임시저장
			pstmt.setInt(1, userBno);
			rs = pstmt.executeQuery();// 쿼리 실행,결과
			
			while (rs.next()) {
				bno = rs.getInt("BNO");
				bhit = rs.getInt("BHIT");
				bgroup = rs.getInt("BGROUP");
				bstep = rs.getInt("BSTEP");
				bindent = rs.getInt("BINDENT");
				id = rs.getString("ID");
				btitle = rs.getString("BTITLE");
				bcontent = rs.getString("BCONTENT");
				bfile = rs.getString("BFILE");
				bdate = rs.getDate("BDATE");
				
				board = new Board(bno, id, btitle, bcontent, bdate, bhit, bgroup, bstep, bindent, bfile);
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
		return board;
	}// selectOne
	
	
	
	// 게시글 작성 메소드--------------------------------------------------//
	public int insertOne(String userId, String userBtitle, String userBcontent, String userBfile) {
		
		try {
			conn = getConnection();
			query = "INSERT INTO BOARD VALUES ("
					+ "BOARD_SEQ.NEXTVAL, ?, ?, ?, SYSDATE,"
					+ "0, BOARD_SEQ.CURRVAL, 0, 0, ? )";
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userBtitle);
			pstmt.setString(3, userBcontent);
			pstmt.setString(4, userBfile);
			result = pstmt.executeUpdate();// executeUpdate()는 0 or 1! 
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}// finally
		return result;
	}// insertOne
	
}
