<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<h3>속성명(문자열 키이름)과 Object값 보기</h3>
	<%
		Enumeration<String> attrEnum = application.getAttributeNames();	// 속성이름(키이름) 목록을 구함
		while(attrEnum.hasMoreElements()){
			String name = attrEnum.nextElement();	// 문자열 키이름(속성명)을 구함
			Object value = application.getAttribute(name);	// 문자열 키이름에 대한 Object 타입으로 업캐스팅한 값을 구함
			
			out.println("속성명(키이름) : <strong style='color:red;'>" + name + "</strong>, 값 : <b>" + value + "</b><hr>");
		}
		
	%>

</body>
</html>