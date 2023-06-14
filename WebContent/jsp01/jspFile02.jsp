<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 이 영역을 jsp스크립트 요소에서 스크립트릿이라고 한다
	/*
	한줄이상 주석문 기호
	*/
	String bookTitle = "Jsp 서버 웹 프로그래밍";
	String author="홍길동";
	
	System.out.println("책 제목 : " + bookTitle);
	System.out.println("책 저자 : " + author);
	// 여기서의 ln은 줄바꿈을 의미
	
	out.println("<hr>");
	out.println("책제목 : <strong>" + bookTitle + "</strong>");
	// out는 출력스트림 JSP 내장객체이다. 주로 출력용도로 사용된다
	
	out.println("<br>");
	out.println("저자이름 : <b style='font-size:32px;'>" + author + "</b>");
	out.println("<hr>");
	// 여기서의 ln은 줄바꿈을 의미하는게 아님
%>