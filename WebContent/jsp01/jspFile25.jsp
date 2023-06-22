<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>절대 경로를 사용하여 자원 읽어오기</h2>
	<%
		char[] buff = new char[128];
		int len = -1;
		
		String filePath = "D:\\20230406_자바취업반A\\web_WorkSpace\\web01\\WebContent\\jsp01\\message\\notice.txt";
		// notice.txt파일 경로를 절대 경로로 설정
		
		try(InputStreamReader br = new InputStreamReader(new FileInputStream(filePath), "UTF-8")){
			/* JDK 1.7이후부터 AutoCloseable 인터페이스를 구현 상속받은 자손은 try() 내에서 객체를 생성하면 finally 문에서 명시적으로 close()하지 않아도 자동으로 닫힌다 */
			while((len = br.read(buff)) != -1){
				// buff배열 길이 만큼 문자를 읽고 배열에 저장, 읽은 문자수를 반환, 더 이상 읽을 것이 없다면 -1
				out.println(new String(buff, 0, len));
				// buff 문자 배열로부터 0에서 len길이만큼 읽어서 문자열 객체로 반환해서 출력
			}
		}catch(IOException ie){
			out.println("예외 발생 : " + ie.getMessage());	// 예외 에러 메시지 출력
		}
	%>
</body>
</html>