<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

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
	
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, password);
		sql = "update boardT7 set bhit = bhit + 1 where bno = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		pstmt.executeUpdate();
	
		sql = "select * from boardT7 where bno = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();

	if (rs.next()) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script>
	function del_check(){
		if(confirm('삭제하시겠습니까?')){
			location="board_del.jsp?no=<%=rs.getInt("bno")%>"
		}
	}

</script>
</head>
<body>
	<table border="1">
		<tr>
			<th colspan="2">게시글 내용보기</th>
		</tr>

		<tr>
			<th>제목</th>
			<td><%=rs.getString("btitle")%></td>
		</tr>
		
		<tr>
			<th>아이디</th>
			<td><%=rs.getString("bname")%></td>
		</tr>

		<tr>
			<th>글내용</th>
			<td><%=rs.getString("bcont").replace("\n", "<br>")%></td>
		</tr>
		<tr>
			<th>조회수</th>
			<td><%=rs.getInt("bhit")%></td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="button" value="수정" onclick="location='board_edit.jsp?no=<%=rs.getInt("bno")%>';">
				<input type="button" value="삭제" onclick="return del_check()">
				<input type="button" value="목록" onclick="location='board_list.jsp';">
			</th>
		</tr>

	</table>

</body>
</html>

<%
	}
} catch (Exception e) {
e.printStackTrace();
} finally {
try {

} catch (Exception e) {
e.printStackTrace();
}
}
%>


