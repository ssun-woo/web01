<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<script src="../js/jquery.js"></script>
<script src="../js/join.js"></script>
</head>
<body>
	<h3>회원가입 폼</h3>
	<form method="post" action="member_join_ok.jsp" onsubmit="return join_check()">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input name="mem_id" id="mem_id" size="14"></td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="mem_pwd" id="mem_pwd" size="14"></td>
			</tr>
			
			<tr>
				<th>회원이름</th>
				<td><input name="mem_name" id="mem_name" size="14"></td>
			</tr>
			
			<tr>
				<th>전화번호</th>
				<td><input name="mem_phone" id="mem_phone" size="20"></td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td><input name="mem_email" id="mem_email" size="30"></td>
			</tr>
			
			<tr>
				<th colspan="2">
					<input type="submit" value="회원가입">
					<input type="reset" value="가입취소" onclick="$('#mem_id').focus();">
				</th>
			</tr>
	</table>
	</form>
</body>
</html>








