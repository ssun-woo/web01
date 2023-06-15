<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	// post방식으로 전송되는 한글 데이터가 안깨지게 한다
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>파라미터 이름에 실려온 값 받기</h2>
	<h3>request.getParameter()사용</h3>
	이름 : <%=request.getParameter("name") %><br>
	<%-- name 파라미터 이름에 담겨져서 전달된 이름을 가져와서 표현식으로 출력 --%>
	<% 
		String addr = request.getParameter("address");
	%>
	주소 : <%=addr %><br>
	
	<h3>request.getParameterValues()사용</h3>
	<%
		String[] pet = request.getParameterValues("pet");
		
		if(pet != null && pet.length > 0){
			/* 문제) 좋아하는 동물을 일반 for 반복문과 향상된 확장 for반복문을 사용해서 각각 출력 */
			out.println("좋아하는 동물(일반 for문) : ");
			for(int i=0; i < pet.length ; i++){
				out.println(pet[i]);
			}
			out.println("<br>");
			out.println("좋아하는 동물(향상된 for문) : ");
			for(String p : pet){
				out.println(p);
			}
		}else{
			out.println("좋아하는 동물이 없습니다 ");
		}
	%>
	
	<h3>request.getParameterNames() 메서드 사용</h3>
	
	<%
		Enumeration<String> paramEnum = request.getParameterNames();
		// 파라미터 이름을 구함
		/* getParameterNames() 메서드는 파리미터 이름을 java.util 패키지의 Enumeration타입으로 구한다
			이 타입은 jdk1.0에서 추가되었고 컬렉션 원소값을 쉽게 읽어오는 용도로 활용된다 */
		out.println("파라미터 이름 : ");
		while(paramEnum.hasMoreElements()){
			String name = (String)paramEnum.nextElement();
			out.println(name);
		}
	%>
	

</body>
</html>



