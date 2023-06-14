<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>오늘 날짜와 시간값</h1>
	<%=new java.util.Date() %>	
	<%-- '%='은 jsp에서 스크립트 요소 중 표현식이라고 한다. 주로 출력용도로 활용된다. 숫자값도 문자열로 인식되어서 출력한다. 
	new키워드 연산은 새로운 객체를 만들때 사용하고, java.util패키지의 Date날짜 클래스 api를 사용하고 있다--%>

</body>
</html>