<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	int no = Integer.parseInt(request.getParameter("gno"));
	String gname = request.getParameter("gname");
	String gtitle = request.getParameter("gtitle");
	String gcont = request.getParameter("gcont");
	String gpwd = request.getParameter("gpwd");
	
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
		sql = "select gpwd from guestbook where gno = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			if(!rs.getString("gpwd").equals(gpwd)){	// 비밀번호가 다르면
				out.println("<script>");
				out.println("alert('비밀번호가 일치하지 않습니다');");
				out.println("history.back();");	// 뒤로 한칸 이동
				out.println("</script>");
			}else{
				/* 문제) 비밀번호가 같으면 번호를 기준으로 글쓴이, 글제목, 글 내용만 수정되게 update쿼리문 수행 후 리턴값 1을 받아서 if조건문으로 '방명록 수정되었습니다'라는 alert() 경고창 띄우고
						목록보기로 이동되게 만들자*/
				sql = "update guestbook set gname = ?, gtitle=?, gcont =? where gno = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, gname);
				pstmt.setString(2, gtitle);
				pstmt.setString(3, gcont);
				pstmt.setInt(4, no);
				
				int res = pstmt.executeUpdate();
				if(res == 1){
					out.println("<script>");
					out.println("alert('방명록 수정되었습니다');");
					out.println("location.href='guest_list.jsp'");	// sendRedirect는 안됨 >> 같은 언어여야 함
					out.println("</script>");
				}
			}
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if (rs != null) rs.close();
			if (pstmt != null) pstmt.close();
			if (con != null) con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
%>