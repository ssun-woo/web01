/**
	board.js
 */
 function bcheck(){
 	
 	if($.trim($("#bname").val()) == ""){
 		alert('이름을 입력하세요');
 		$("#bname").val("").focus();
 		return false;
 	}
 	if($.trim($("#btitle").val())==""){
 		alert('제목을 입력하세요');
 		$('#btitle').val("").focus();
 		return false;
 	}
 	if($.trim($("#bcont").val())==""){
 		alert('내용을 입력하세요');
 		$('#bcont').val("").focus();
 		return false;
 	}
 }