<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type = request.getParameter("type");

	if(type == null){
		return;	//종료
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<table width="100%" border="1">
		<tr>
			<th>타입</th>
			<td><strong><%=type %></strong></td>
		</tr>
		
		<tr>
			<th>특징</th>
			<td>
				<%
					if(type.equals("A")){	// equals()메서드는 객체주소는 달라도 문자열 내용만 같아도 참
						out.println("강한 내구성");
					}else if(type.equals("B")){
						out.println("뛰어난 대처 능력");
					}
				%>
			</td>
		</tr>
		
		
	</table>
</body>
</html>