<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>폼 입력 필드</h2>
	<form action="request_ok.jsp" method="post">
		
		이름 : <input type="text" name="name" size="14"><br><br>
		주소 : <input type="text" name="address" size="34"><br><br>
		좋아하는 동물 : 
			<input type="checkbox" name="pet" value="Dog">강아지
			<%--
				1. checkbox는 네모 버튼을 만들고 하나 이상 복수개 선택이 가능하다. pet name 파라미터 이름에 value 속성값인 Dog가 저장되어 서버로 데이터가 전송된다
			 --%>
			<input type="checkbox" name="pet" value="Pig">돼지
			<input type="checkbox" name="pet" value="Cat" checked="checked">고양이
			<%-- checked 속성을 사용하면 미리 체크된 상태로 나온다 --%>
			<hr>
		
		<input type="submit" value="전송">
		<input type="reset" value="취소">
	</form>

</body>
</html>