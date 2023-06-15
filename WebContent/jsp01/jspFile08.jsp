<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	/* 
		jsp 스크립트 요소에서 선언문이라고 한다
		선문은 변수나 메소드 선언용도로 활용된다
	*/
	public int multiply(int a, int b){
		int result = a*b;
		return result;		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h2>jsp스크립트 요소중 선언문을 활용한 두 정수의 곱</h2>
<h3>10 * 30 = <%=multiply(10, 30)%></h3>
</body>
</html>