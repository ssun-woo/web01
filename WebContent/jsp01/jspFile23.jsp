<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>web.xml에 설정된 초기화 파라미터 읽어오기</h3>
	초기화 파라미터 목록 : 
	<ul>
		<%
			Enumeration<String> initParamEnum = application.getInitParameterNames(); 
			// 웹 애플리케이션 초기화 파라미터 목록을 Enumeration타입으로 반환
			
			while(initParamEnum.hasMoreElements()){
				String initParamNames = initParamEnum.nextElement();
				// 파라미터 이름을 구함
		%>
			<li>
				<%=initParamNames%> : <%=application.getInitParameter(initParamNames) %>
				<%-- getInitParameter(String name); 메서드는 파라미타 이름에 해당하는 초기화 파라미터 값을 구한다 
					해당 값이 없다면 null을 반환한다 --%>
			</li>
		<% } %>
	</ul>

</body>
</html>