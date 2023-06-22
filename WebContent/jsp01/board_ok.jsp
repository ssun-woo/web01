<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 문제) jsp 스크립트 릿 문법 안에서 글제목과 글 내용을 가져와서 출력해보고, 한글 데이터가 깨지는지 확인
	// 		하이퍼 링크 방식을 사용해서 게시판 글쓰기 이동되게 만들기
	request.setCharacterEncoding("UTF-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	out.println("제목 : " + title + "<br>");
	out.println("내용 : " + content + "<br>");
	out.println("<a href='jspForm14.jsp'>게시판 이동</a>");
%>