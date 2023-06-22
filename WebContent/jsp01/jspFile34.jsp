<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer = "1kb" %>
<%@ page errorPage="/error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>버퍼 1kb 다 채우고 비우면 예외 에러가 발생</h3>
	<%
		for(int i=0; i<=300; i++){
			out.println("&nbsp;" + i);	// &nbsp : 쓴 횟수만큼 빈 공간으로 처리
		}
	%>
	
	<%= 8/0%>
</body>
</html>