<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="1kb" autoFlush="false" %>
<%-- 
	buffer 속성은 버퍼의 크기를 지정할 때 사용한다
 	버퍼 속성을 지정하지 않으면 최소크기가 8kb크기를 갖는 버퍼를 사용한다
 	버퍼 크기단위는 kb이다
 	autoFlush 속성은 버퍼가 찼을 때 어떻게 처리할 지를 설정할 수 있다
 	속성값을 false로 지정하면 버퍼(임시 메모리)가 다 차면 예외 오류를 발생시키고 작업을 중지한다
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>autoFlush 속성값 false 예제</h2>
	<% for(int i=1; i<=1000; i++){
		out.println(" 1234");
		}
	%>

</body>
</html>