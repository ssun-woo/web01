<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>jsp:forward 액션태그에 관한 실습예제</h3>
	<form action="forward_ok.jsp">
	<%-- method 속성을 생략하면 default는 get방식(url에 노출됨, 보안상 좋지않음) --%>
		보고 싶은 페이지 선택 : <select name="code"> <%-- radio, checkbox, select는 name파라미터 이름에 value 속성값이 담겨져서 서버로 전송됨 --%>
			<option value="A">A페이지</option>
			<option value="B">B페이지</option>
			<option value="C">C페이지</option>
		</select>
		<hr>
		<input type="submit" value="이동">
	</form>
</body>
</html>