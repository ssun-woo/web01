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
		sql = "select * from guestbook where gno = ? ";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 수정 Form</title>
<script src="../js/jquery.js"></script>
<script src="../js/guest.js"></script>

</head>
<body>

	<form action="guest_edit_ok.jsp" method="post" onsubmit="return check();">
	<input type="hidden" name="gno" value="<%= no%>">
	<%-- hidden은 브라우저 주소창에서 보이지는 않지만  gno 네임파라미터 이름에 value속성값을 담아서 전달할 때 유용하게 사용. 
	이때 전달되는 번호값은 문자열 타입이다 하지만 페이지 소스보기에서는 노출 됨, 보안상으로 중요한 비밀번호 같은 데이터는 히든으로 전달하지 않는다--%>
		<table border="1">
			<tr>
				<th colspan="2">jsp 방명록 수정폼</th>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td><input name="gname" id="gname" size="14" value="<%=rs.getString("gname") %>"></td>
					<%-- type 속성을 생략하면 기본값으로 text가 들어간다(text는 한 줄 입력박스) --%>
			</tr>
			
			<tr>
				<th>글제목</th>
				<td><input type="text" name="gtitle" id="gtitle" size="36" value="<%=rs.getString("gtitle")%>"></td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="gpwd" id="gpwd" size="14"></td>
			</tr>
			
			<tr>
				<th>글내용</th>
				<td><textarea name="gcont" id="gcont" rows="10" cols="36"><%=rs.getString("gcont") %></textarea> </td>
			</tr>
			
			<tr>
				<th colspan="2">
					<input type="submit" value="방명록 수정">
					<input type="reset" value="취소" onclick="$('#gname').focus();">
				</th>
			</tr>
		</table>
	</form>

</body>
</html>

<%	}
		
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




















