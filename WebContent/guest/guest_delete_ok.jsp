<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<% 
	/*
		문제) 비번이 같으면 삭제되게 하고, 비번이 다르면 alert('비번이 다릅니다');라고 경고창을 띄우고
		history.go(-1)을 사용해서 뒤로 한칸 이동한다. 이것은 history.back()과 같은 기능이다
		
		delete 삭제 쿼리문 수행후 성공한 레코드 행의 개수 1을 리턴받아서 if 조건문으로 처리해서 jsp내장객체인
		response.sendRedirect("guest_list.jsp")로 이동되게 만든다
	*/
	request.setCharacterEncoding("UTF-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String gpwd = request.getParameter("del_pwd");
	
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
			if(!rs.getString("gpwd").equals(gpwd)){
				out.println("<script>");
				out.println("alert('비밀번호가 다릅니다');");
				out.println("history.go(-1);");
				out.println("</script>");
			}else{
				sql = "delete from guestbook where gno = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, no);
				
				int res = pstmt.executeUpdate();
				if(res == 1){
					response.sendRedirect("guest_list.jsp");
				}
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