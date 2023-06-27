<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	Calendar c = Calendar.getInstance();
	request.setAttribute("time", c);	// time문자열 속성 키이름에 Object 타입으로 업캐스팅한 c가 저장됨
%>

<%-- jsp:forward에 의한 값 전달 방식 => servlet MVC나 Spring MVC에서 사용하는 방식 --%>
<jsp:forward page="result.jsp" />

