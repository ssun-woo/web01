<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>include 디렉티브</h3>
	<%
		int number = 10;
	%>
	<%@ include file="included.jspf" %>	
	<%-- 포함되어질 파일 확장자에 .jspf로 하면 소스코드 조각 파일이라는 의미 , jsp로 해도된다 --%>
	
	공통변수 dataFolder : <%=dataFolder%>

</body>
</html>