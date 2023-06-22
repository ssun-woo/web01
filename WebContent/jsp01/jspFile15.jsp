<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("memberId");	
	// 이 소스를 실행할 때 브라우저 주소창에 *.jsp?memberId=아이디를 노출되는 get방식으로 전달해야 한다.
	// 이런방식을 queryString방식이라고 한다 
	
	if(id != null && id.equals("abc1234")){
		response.sendRedirect("index.jsp");	
		// 메인페이지로 이동, sendRedirect() 메서드는 원하는 주소 또는 파일로 이동시켜 준다
	}else{
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2 style="color: red;">잘못된 아이디 입니다</h2>

</body>
</html>
<% } %>