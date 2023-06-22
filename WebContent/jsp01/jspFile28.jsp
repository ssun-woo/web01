<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");	
	// 웹 주소창에 노출되는 get 방식(쿼리스트링 방식)으로 다음과 같이 값을 전달한다 
	// '.jsp?name=arr01&value=value01' &로 구분해서 name파라미터 이름에 arr01, vlaue파라미터에 value01값이 들어간다
	
	if(name != null && value != null){
		application.setAttribute(name, value);
		// 문자열 키이름과 Object 타입으로 value 값을 업캐스팅해서 저장
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%if (name != null && value != null){%>
	application 객체 속성 설정 : <%=name %> = <%= value %>
	<%}else{ %>
	application 기본 개체의 속성 설정 안함
	<%} %>

</body>
</html>