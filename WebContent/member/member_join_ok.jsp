<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.naver.vo.*, com.naver.dao.*" %>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="mem" class="com.naver.vo.Member7VO" />
<%-- jsp유즈빈 액션태그, Member7VO빈클래스의 객체명 mem을 생성 --%>

<jsp:setProperty name="mem" property="*" />
<%-- 값 저장 액션태그, name속셩명으로 객체명 mem을 참조, 프로퍼티 속성값을 *로 처리할 수 있는 이유가 빈 클래스 변수명과 네임파라미터 이름이 같기 때문에 --%>

회원아이디 : <jsp:getProperty name="mem" property="mem_id" /><br>
<%-- 값 반환 액션태그, 자바코드로 표현하면 mem.getMem_id();와 같은 역할--%>
회원이름 : <%= mem.getMem_name()%><hr>

<%
	MemberDAOImpl mdao = new MemberDAOImpl();
	int result = mdao.insertMember(mem);
	if(result == 1){
		out.println("<script>");
		out.println("alert('회원가입을 성공했습니다!');");
		out.println("location.href = 'member_list.jsp';");
		out.println("</script>");
	}
%>