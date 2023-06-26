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
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, password);
		sql = "update guestbook set ghit = ghit+1 where gno = ?";	// ?는 모르는 값
		// 번호를 기준으로 조회수 증가
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);	// 1은 쿼리문의 첫번째 물음표라는 의미, 즉 쿼리문의 첫번째 물음표에 정수 숫자로 번호값 저장
		pstmt.executeUpdate();	// 수정 쿼리문 실행
		
		sql = "select * from guestbook where gno = ?";
		pstmt = con.prepareStatement(sql);	// 오류처럼 보이지만 오류 아님
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();	// select문 수행후 검색 결과 레코드를 rs에 저장
		
		if(rs.next()){	// 검색되는 레코드가 하나이기 때문에 if문으로 처리
		
%>
		<table border="1">
			<tr>
				<th colspan = "2"> 방명록 내용보기 </th>
			</tr>
			
			<tr>
				<th>제목</th> <td><%=rs.getString("gtitle") %></td>
			</tr>
			
			<tr>
				<th>글내용</th> 
				<td><%-- <pre><%= rs.getString("gcont") %></pre> --%>
					<%= rs.getString("gcont").replace("\n","<br>") %>
					<%-- textarea 입력필드에서 엔터키 친 부분을 내용보기에 줄바꿈 처리한다 --%>
				</td>
			</tr>
			<%-- 문제) 방명록 글쓰기폼에서 글내용 입력필드 textarea에서 엔터키를 친 부분을 내용보기에서 줄바꿈을 못한다, 이부분을 해결 --%>
			
			<tr>
				<th>조회수</th> <td><%= rs.getInt("ghit") %></td>
			</tr>
			
			<tr>
				<th colspan="2">
					<input type="button" value="수정" onclick="location='guest_edit.jsp?no=<%=rs.getInt("gno")%>';">
					<input type="button" value="삭제" onclick="location='guest_delete.jsp?no=<%=rs.getInt("gno")%>';">
					<input type="button" value="목록" onclick="location='guest_list.jsp';">
				</th>
			</tr>
		</table>
	
	
<% 		} // if end
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

</body>
</html>