<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<h3>application JSP 내장객체로 Tomcat WAS 서버 정보와 Servlet 버전 알아내기</h3>
	서버 정보 : <%=application.getServerInfo() %><hr>
	서블릿 규약 메이저 버전 : <%=application.getMajorVersion() %><hr>
	서블릿 규약 마이너 버전 : <%=application.getMinorVersion() %><hr>
	<%-- 메이저 버전이 4, 마이너 버전이 0이면 결국 서블릿 버전은 4.0을 뜻한다 --%>
</body>
</html>