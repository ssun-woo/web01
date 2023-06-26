<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String bname = request.getParameter("bname");
	String btitle = request.getParameter("btitle");
	String bcont = request.getParameter("bcont");
	
	String driver = "oracle.jdbc.OracleDriver";	// jdbc 라이브러리 *.jar로 부터 읽어옴 oracle.jdbc는 패키지 폴더명, OracleDriver는 오라클 jdbc드라이버 클래스명
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 오라클 접속 주소, 1521은 포트번호, xe는 데이터베이스 명
	String user = "java";
	String password = "1234";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	String sql = null;
	
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, password);
		sql = "insert into boardT7(bno, bname, btitle, bcont) values(bno_seq.nextval, ?, ?, ?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, bname);
		pstmt.setString(2, btitle);
		pstmt.setString(3, bcont);
		
		int res = pstmt.executeUpdate();
		
		if(res == 1){
			out.println("<script>");
			out.println("alert('등록됐습니다');");
			out.println("location.href='board_list.jsp'");
			out.println("</script>");
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(pstmt != null) pstmt.close();
			if(con != null) con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
%>