package com.naver.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.naver.vo.Member7VO;


public class MemberDAOImpl {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	// oracle.jdbc.driver는 패키지명, OracleDriver는 오라클  jdbc 드라이버 클래스명
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "java";
	String password = "1234";

	Connection con = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public int insertMember(Member7VO m) {
		int re = -1;	// 저장 실패시 반환값
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			sql = "insert into memberT values('"+ m.getMem_id() +"', '"+ m.getMem_pwd() +"', + '" + m.getMem_name() + "', + '" + m.getMem_phone() + "', + '" + m.getMem_email() + "')";
			stmt = con.prepareStatement(sql);
			re = stmt.executeUpdate(sql);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try { 
				if(stmt != null) stmt.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return re;
	}
	
	public List<Member7VO> getMemList(){
		List<Member7VO> mlist = new ArrayList<Member7VO>();
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			sql = "select * from memberT order by mem_id asc";
			// 아이디를 기준으로 오름차순 정렬(알파벳순)
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();	// select문 실행 후 검색결과 레코드를 rs에 저장
			
			while(rs.next()) {	// 복수개의 레코드행이 검색되어서 while 반복문으로 처리
				Member7VO m = new Member7VO();
				m.setMem_id(rs.getString("mem_id"));// mem_id 컬럼에 저장된 문자열 아이디 가져와서 setter()에 저장
				m.setMem_pwd(rs.getString("mem_pwd"));
				m.setMem_name(rs.getString("mem_name"));
				m.setMem_phone(rs.getString("mem_phone"));
				m.setMem_email(rs.getString("mem_email"));
				mlist.add(m);	// 컬렉션에 추가
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (con != null) con.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mlist;
	}
	
	public int getMemberCount() {
		int memberCount = 0;	// 총 회원수
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			sql = "select count(mem_id) from memberT";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			if(rs.next()) {
				memberCount = rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return memberCount;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
