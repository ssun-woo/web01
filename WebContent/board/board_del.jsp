<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "java";
	String password = "1234";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, password);
		sql = "select * from boardT7 where bno = ? ";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		if(rs.next()){
			sql = "delete from boardT7 where bno=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			int res = pstmt.executeUpdate();
			if(res == 1){
				response.sendRedirect("board_list.jsp");
			}
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}


%>
