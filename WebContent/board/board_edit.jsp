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
</head>
<body>

	<form action="board_edit_ok.jsp" method="post" onsubmit="return bcheck();">
	<input type="hidden" name="bno" value="<%=no%>">

		<table border="1">
			<tr>
				<th colspan="2">게시글 수정</th>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td><input type="text" id="bname" name="bname"
					value="<%=rs.getString("bname")%>"></td>
			</tr>
			<tr>
				<th>글 제목</th>
				<td><input type="text" id="btitle" name="btitle"
					value="<%=rs.getString("btitle")%>"></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><textarea rows="10" cols="50" name="bcont" id="bcont"><%=rs.getString("bcont")%></textarea></td>
			</tr>

			<tr>
				<th colspan="2"><input type="submit" value="저장"> <input
					type="reset" value="취소" onclick="$('#bname').focus();"></th>
			</tr>

		</table>


	</form>


</body>
</html>

<%
	}
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

