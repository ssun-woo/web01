<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("mem_id");
	String pwd = request.getParameter("mem_pwd");
	String name = request.getParameter("mem_name");
	String phone = request.getParameter("mem_phone");
	String email = request.getParameter("mem_email");
	
%>

아이디 : <%= id%>	<br>
비밀번호 :	<%= pwd%> <br>
이름 : <%= name%>	<br>
전화번호 : <%= phone%> <br>
이메일 : <%= email%> <br>
<hr>
<input type="button" onclick="location.href='jspForm13.jsp'" value="회원가입으로 돌아가기">

