<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id='main'>
	<div id='target'>TARGET</div>
	
	<div id='btn_zone'>
		<input type='button' value='WRAP' id='btnWrap' onclick='abc(this)'/>
		<input type='button' value='APPEND' id='btnAppend' />
		<input type='button' value='PREPEND' id='btnPrepend'/>
	</div>

</div>

<script>
	// 버튼 3개에 각각 click event 처리
	
	// WRAP 버튼 click event 처리방법
	function abc(button){
		//console.log(button.value);
		var wrap = "<label><input type='checkbox'>확인</lable>";
		$('#main>#target').wrap(wrap);
		
	}
	// jQuery 사용하여 아이디 값을 받아 씀
	var btnAppend = $('#btnAppend')[0];
	btnAppend.onclick = function(){
		//console.log($(this).val());
		var wrap = "<br/><label><input type='checkbox'>확인</label>";
		for(var i=0;i<5;i++){
			$('#main>#target').append(wrap);
		}
		
	}
	// 순수 javascript 언어로 사용함.
	var btnPrepend = document.getElementById('btnPrepend');
	btnPrepend.onclick = function(){
		//console.log(this.value)
		var wrap = "<label><input type='checkbox'>확인</label>";
		$('#main>#target').prepend(wrap);
	}
	
</script>
</body>
</html>