<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	Calendar cal = (Calendar)request.getAttribute("time");	
	// time 문자열 속성 키이름에 해당하는 object를 구하고 Calendar타입으로 다운캐스팅
	
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH)+1;	// 기본적으로 1월이 0으로 반환되기 때문에 +1을 해줘야 해당 월이 출력됨
	int date = cal.get(Calendar.DATE);
	
	out.println(year + "년" + month + "월" + date + "일");
%>