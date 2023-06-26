<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "java";
String password = "1234";

Connection con = null;
PreparedStatement pstmt = null;
Statement stmt = null;
ResultSet rs = null;
ResultSet rs2 = null;
String sql = null;

try {
	Class.forName(driver);
	con = DriverManager.getConnection(url, user, password);
	sql = "select * from boardT7 ORDER by bno desc";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	sql = "select count(*) from boardT7";
	stmt = con.createStatement();
	rs2 = stmt.executeQuery(sql);
			
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		if(rs2.next()){
			long count = rs2.getLong(1);
	%>
	
	<table border="1">
		<tr>
			<th colspan="5">게시판(전체 게시글 수 : <%=count %>)</th>
		</tr>
		
		<tr>
			<th>번호</th> <th>제목</th> <th>아이디</th> <th>조회수</th> <th>등록일</th>
		</tr>
		
		<%}while(rs.next()){ %>
		<tr>
			<td><%= rs.getInt("bno") %></td>
			<td><a href="board_cont.jsp?no=<%= rs.getInt("bno") %>"><%= rs.getString("btitle") %></a></td>
			<td><%= rs.getString("bname") %></td>
			<td><%= rs.getString("bhit") %></td>
			<td><%= rs.getString("bdate").substring(2,10) %></td>
			
		</tr>
		
		<%} %>
		
		<tr>
			<th colspan="5"><input type="button" value="게시글 작성" onclick="location.href='board_write.jsp'"></th>
		</tr>
	
	
	</table>


</body>
</html>

<%
	} catch (Exception e) {
e.printStackTrace();
} finally {
try {
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (con != null)
		con.close();
} catch (Exception e) {
	e.printStackTrace();
}
}
%>