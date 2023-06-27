<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");
	String url = null;
	
	if(code.equals("A")){
		url = "a.jsp";
	}else if(code.equals("B")){
		url = "b.jsp";
	}else if(code.equals("C")){
		url = "c.jsp";
	}
%>

<jsp:forward page="<%=url %>"/>
<%-- jsp:forward 액션태그를 사용해서 page 속성에 지정한 페이지가 본문내용창에 출력되고, 
	웹 브라우저 주소창에 보여지는 주소값과 본문내용창 파일내용이 서로 다르다--%>
