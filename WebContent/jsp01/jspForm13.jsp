<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="../js/jquery.js"></script>
<script>
/* 문제) 아이디부터 이메일까지 자바스크립트와 jQuery를 사용해서 유효성 검증메시지 경고창을 만들어 본다 */
	
	join_check = () => {
		if($.trim($("#mem_id").val()).length==0){
			alert('아이디를 입력하세요');
			$("#mem_id").val('').focus();
			return false;
		}
		
		if($.trim($("#mem_pwd").val()).length==0){
			alert('비밀번호를 입력하세요');
			$("#mem_pwd").val('').focus();
			return false;
		}
		
		if($.trim($("#mem_name").val()).length==0){
			alert('이름을 입력하세요');
			$("#mem_name").val('').focus();
			return false;
		}
		
		if($.trim($("#mem_phone").val()).length==0){
			alert('전호번호를 입력하세요');
			$("#mem_phone").val('').focus();
			return false;
		}
		
		if($.trim($("#mem_email").val()).length==0){
			alert('이메일을 입력하세요');
			$("#mem_email").val('').focus();
			return false;
		}
	}
	
	
	
</script>
</head>
<body>
	<h3>회원가입 Form 유효성 검증연습</h3>
	<form method=post action="join_ok.jsp" onsubmit="return join_check();">
		<table border="1">
			<tr>
				<th>회원 아이디</th>
				<td><input type="text" name="mem_id" id="mem_id" size="14"></td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="mem_pwd" id="mem_pwd" size="14"></td>
			</tr>
			
			<tr>
				<th>회원이름</th>
				<td><input type="text" name="mem_name" id="mem_name" size="14"></td>
			</tr>
			
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="mem_phone" id="mem_phone" size="20"></td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td><input type="text" name="mem_email" id="mem_email" size="24"></td>
			</tr>
			
			<tr>
				<th colspan="2">	<%-- 2개의 열을 합침 --%>
					<input type="submit" value="회원가입">
					<input type="reset" value="가입취소" onclick="$('#mem_id').focus();">
				</th>
			</tr>
		
		</table>
	
	</form>
</body>
</html>