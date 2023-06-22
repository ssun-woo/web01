<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>pageContext 기본객체</h3>
	<%
		HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
		/*
			HttpServletRequest 서블릿 자바 api는 사용자 폼에서 입력한 정보를 서버로 가져올 때 사용한다
		*/
	%>
	request jsp 기본 내장객체와 pageContext.getRequest()의 동일여부 : <%=request == httpRequest %>
	<hr>
	pageContext.getOut()메서드를 사용한 데이터 출력 : <% pageContext.getOut().println("안녕하세요!"); %>
	<%-- pageContext.getOut()는 jsp내장객체 중 출력용도로 활용되는 out과 같다 --%>
</body>
</html>