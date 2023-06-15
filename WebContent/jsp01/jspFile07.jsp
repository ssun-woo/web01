<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	문제) jsp 스크립트릿과 표현식을 활용해서 1부터 10까지의 자연수의 누적합을 for반복문을 사용해서 구해보고, 
	11부터 20까지 자연수의 누적합을 while 반복문을 사용해서 구해보고
	21부터 30까지 누적합을 do~while반복문을 사용해서 구해본다 
--%>

<%
	int sum = 0;
	int i;
	for(i=1; i<=10; i++){
		sum += i;
	}
	
	int sum2 = 0;
	while(i<=20){
		sum2 += i;
		i++;
	}
	
	int sum3 = 0;
	do{
		sum3 += i;
		i++;
	}while(i<=30);
%>

1부터 10까지의 합 : <%=sum%> <br>
11부터 20까지의 합 : <%=sum2 %><br>
21부터 30까지의 합 : <%=sum3 %>
