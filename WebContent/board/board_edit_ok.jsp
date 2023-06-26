<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	int no = Integer.parseInt(request.getParameter("bno"));
	
	String bname = request.getParameter("bname");
	String btitle = request.getParameter("btitle");
	String bcont = request.getParameter("bcont");
	
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
		sql = "update boardT7 set bname = ?, bcont = ?, btitle = ? where bno = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, bname);
		pstmt.setString(2, bcont);
		pstmt.setString(3, btitle);
		pstmt.setInt(4, no);
		
		int res = pstmt.executeUpdate();
		
		if(res == 1){
			out.println("<script>");
			out.println("alert('수정됐습니다');");
			out.println("location.href='board_list.jsp'");
			out.println("</script>");
		}
		
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(con != null) con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>