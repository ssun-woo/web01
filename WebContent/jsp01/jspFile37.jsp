<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   request.setCharacterEncoding("UTF-8");
   /* 1. method = post 방식으로 전송된 한글을 서버에서 받을 때 안깨지게 해 준다.
      2. jsp: include 액션태그에서 jsp:param 태그로 피라미터 이름에 담겨져서 던달된 한글을 안깨지게 해주는 기능
   */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h3>jsp:param태그에 의해서 피라미터 값 전달 예제</h3>
 include 되기 전 name 피라미터 값 : <%=request.getParameter("name") %>
<%-- *.jsp?name=파라미터값 은 웹 주소창에 노출되는 get 방식(쿼리스트링방식) 데이터를 전달한다. --%>
 <hr>
  <jsp:include page="body_sub.jsp" flush="false">
  	<jsp:param name="name" value="홍길동" />
  </jsp:include>
  <%-- jsp:param 액션태그에 의해서 전달되어진느 파라미터 값은 jsp:include 액션 태그에 의해서 포함되어질 파일인 body_sub.jsp페이지 내에서만 유효하다 --%>
  <hr>
  include 이후 name 파라미터 값 : <%= request.getParameter("name") %>
</body>
</html>