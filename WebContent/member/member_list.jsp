<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.naver.vo.*, com.naver.dao.MemberDAOImpl" %>

<%
	MemberDAOImpl mdao = new MemberDAOImpl();
	List<Member7VO> mlist = mdao.getMemList();	// 회원 목록을 가져옴
	int totalMemberCount = mdao.getMemberCount();	// 총 회원수
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자(admin) 회원목록</title>
</head>
<body>
	<table border="1">
		<tr>
			<th colspan="5">관리자 회원목록</th>
		</tr>
		
		<tr>
			<td colspan="5" style="text-align: right;"><strong style="font-size:28px;">총 회원수 : <%= totalMemberCount %></strong></td>
		</tr>
		
		<tr>
			<th>아이디</th> <th>비밀번호</th> <th>회원이름</th> <th>전화번호</th> <th>이메일</th>
		</tr>
		
		<%
			if(mlist != null && mlist.size() >0){
				for(Member7VO m :mlist){
		%>
		
		<tr>
			<th><%= m.getMem_id()%></th>
			<th><%= m.getMem_pwd()%></th>
			<th><%= m.getMem_name()%></th>
			<th><%= m.getMem_phone()%></th>
			<th><%= m.getMem_email()%></th>
		</tr>
		
		<%}
			}else{
		%>
			<tr>
				<th colspan="5">회원 목록이 없습니다</th>
			</tr>
		<%
			}
		%>
		
		<tr>
			<th colspan = "5">
				<input type="button" value="회원가입" onclick="location='member_join.jsp';">
			</th>
		</tr>
	</table>
	

</body>
</html>