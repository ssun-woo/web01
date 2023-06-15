<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>jsp내장객체 중 request를 사용한 client(사용자)와 서버 정보</h1>
	
	프로토콜(통신규약) : <%= request.getProtocol()%> <hr>
	전송방식 : <%= request.getMethod() %> <hr>	<%-- 웹 브라우저에서 직접 실행하거나 주소창에서 직접 입력해서 실행하는 데이터 전송방식은 get으로 인식한다 --%>
	요청  uri : <%= request.getRequestURI() %> <hr>
	컨텍스트 패스 경로 : <%= request.getContextPath() %> <hr>
	서버이름 : <%= request.getServerName() %> <hr>
	서버포트번호 : <%= request.getServerPort() %> <hr>
	
</body>
</html>