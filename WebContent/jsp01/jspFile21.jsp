<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="8kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>버퍼정보와 out 내장객체 하위의 메서드</h3>
	버퍼크기 : <%= out.getBufferSize() %><hr>
	버퍼 남은 크기 : <%= out.getRemaining() %><hr>
	버퍼가 다 찬 경우 자동으로 비울 것인지 : <%= out.isAutoFlush() %><hr>
	
</body>
</html>