<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>에러 발생</h3>
	요청 처리 과정에서 에러가 발생했습니다<br>
	빠른 시간내에 문제를 해결하도록 하겠습니다
	<hr>
	에러 타입 : <%=exception.getClass().getName() %><hr>
	에러메시지 : <strong><%=exception.getMessage() %></strong>

</body>
</html>