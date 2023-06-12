<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
		환영합니다 <strong>${param.name2}</strong>님!
	<%-- jsp 주석문 기호, ${}는 표현언어(Expression Language, EL)라고 한다. 즉, 파라미터이름 name2에 실려온 값을 가져와서 출력한다  --%>
	<%-- jsp 주석문은 반드시 이렇게 작성, <!-- -->을 사용할 경우 오류 발생할 수 있다 --%>
</body>
</html>