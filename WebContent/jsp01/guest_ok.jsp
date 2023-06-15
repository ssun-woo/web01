<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String gName = request.getParameter("gName");
	String gTitle = request.getParameter("gTitle");
	String gCont = request.getParameter("gCont");
	
	out.println("글쓴이 : " + gName + "<br> 글제목 : " + gTitle + "<br> 글내용" + gCont);
	out.println("<hr><a href='jspForm12.jsp'>글쓰기</a>");
%>
