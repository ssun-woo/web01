<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- page import 속성을 사용하지 않아서 풀패키지 경로를 모두 사용한 예 --%>

<%
	java.util.Calendar cal = java.util.Calendar.getInstance();
%>

오늘은
<%= cal.get(java.util.Calendar.YEAR) %>년
<%= cal.get(java.util.Calendar.MONTH)+1 %>월
<%= cal.get(java.util.Calendar.DATE) %>일 입니다

