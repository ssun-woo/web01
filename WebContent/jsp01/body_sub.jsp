<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
body_sub.jsp에서 name 파라미터 값 : <%=request.getParameter("name") %>
<br>
name 파라미터 값 목록
<ul>
	<%
		String[] names = request.getParameterValues("name");	// 여러개의 name파라미터 값을 문자열 배열로 받아서 처리
		
		/*
			- jsp:param 태그는 이미 동일한 name파라미터 값이 존재하면 기존 파라미터 값을 유지한 채 새로운 값을 추가한다
			- get으로 전달된 파라미터 값보다는 jsp:param태그에 의해서 전달되어지는 파라미터 값이 우선한다
		*/
		
		
		
		for(String name : names){
	%>
		<li><%=name %></li>
	<%  }	%>

</ul>
    
    