<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
	/* #gTitleCheck{
		color: red; 
		font-size: 7px;
		margin: 0px 0px 90px 50px;
	} */
</style>
</head>
<script src="../js/jquery.js"></script>
<script>
	
	guest_check = () => {						// function 키워드로 guest_book()함수 정의
		$gName = $.trim($('#gName').val());		// trim() 함수는 양쪽 공백을 제거, 글쓴이를 저장
		if($gName.length == 0){
			window.alert('글쓴이를 입력하세요!');	// window.은 생략가능
			$('#gName').val('');		// 글쓴이 입력필드 초기화
			$('#gName').focus();		// 글쓴이 입력필드로 포커스 이동
			return false;		// 이벤트 종료
		}
		
		$gTitle = $.trim($('#gTitle').val());
		if($gTitle == ''){
			/* alert('글 제목을 입력하세요!');
			$('#gTitle').val('').focus(); */
			/* $('#gTitleCheck').text('글 제목을 입력하세요'); */
			$('#gTitleCheck').html("<strong style='font-size: 7px; color: red; margin: 0px 0px 30px 50px'> 글 제목을 입력하세요!</strong>");
			$('#gTitle').focus();
			return false;
		}else{
			$('#gTitleCheck').empty();
		}
		
		if($.trim($('#gCont').val()).length == 0){
			alert('글 내용을 입력하세요!');
			$('#gCont').val('').focus();
			return false;
		}
	}
	
</script>
<body>
	<h2>방명록 입력폼 유효성 검증 연습(Validate)</h2>
	<%-- 
		문제1) table 사용하지말고 입력폼 3개를 만들어서 유효성 검증 메세지를 띄우게 해보자
		문제2) 글제목을 입력하세요! 라는 유효성검증 메시지가 경고창으로 띄워지고 있는데 이 부분을 주석처리하고 적절한 jQuery함수를 사용해서 
			 글제목 입력필드 밑에 빨간색 문자로 다음과 같은 유효성 검증 메시지를 띄워보자('방명록 글제목을 입력해 주세요!) 
	--%>
	
	<form action="guest_ok.jsp" method="post" onsubmit="return guest_check()">
		글쓴이 : <input type="text" name="gName" id="gName"><br><br>
		제목 : <input type="text" name="gTitle" id="gTitle"><br><span id="gTitleCheck"></span><br><br>
		내용 : <textarea rows="5" cols="50" id="gCont" name="gCont"></textarea><br><br>
		
		<input type="submit" value="제출">
		<input type="reset" value="취소">
	</form>
	
	
</body>
</html>