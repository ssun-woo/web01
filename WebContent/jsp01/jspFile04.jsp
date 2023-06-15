<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	문제) page import 속성을 사용해서 java.util.*를 import하고 추상클래스인 켈린더를 사용해서 년월일 시분초 값을 out.println()과 <%= 표현식을 사용해서 출력해보자
--%>
<%@ page import="java.util.*" %>

<%
	Date today = new Date();
	SimpleDateFormat d = new SimpleDateFormat("yyyy년 MM월 dd일 aa hh시 mm분 ss초");
	out.println(d.format(today));
	out.println("<br>");
	
	Calendar cal = Calendar.getInstance();
	
	int year = cal.get(Calendar.YEAR);	// 년도값
	int month = cal.get(Calendar.MONTH)+1;	// 월값, 1월이 0으로 반환되기때문에 +1 해준다
	int date = cal.get(Calendar.DATE);	// 일값
	int hour = cal.get(Calendar.HOUR_OF_DAY);	// 24시간제 시간값
	int minute = cal.get(Calendar.MINUTE);	// 분값
	int second = cal.get(Calendar.SECOND);	// 초값
	
	out.println("<h3>" + year + "년 " + month + "월 " + date + "일 " + hour + "시 " + minute + "분 " + second + "초 </h3>");
	
%>
<hr>
<h3><%=year%>년 <%=month%>월 <%=date%>일 <%=hour%>시 <%=minute%>분 <%=second%>초</h3>