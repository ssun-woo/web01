<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>예외 오류 발생</h3>
	name 파라미터 값 : <%=request.getParameter("name").toUpperCase() %>
	<%-- name 파라미터 값이 null인 상태에서 영문 대문자로 변경할 수 없음(예외오류) --%>
</body>
</html>