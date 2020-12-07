<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>keyup</title>
<style>
	#result{
	border:2px solid #aaa;
	border-radius:10px;
	padding:15px;
	width:350px;
	height:200px;
	background-color:yellow;
	font-color : white;
	box-shaow:2px 2px 4px #999;
	margin-top:10px;
	
	overflow:auto;
	}

</style>

</head>
<body>
<div id='keyup'>
	<label>생년월일</label>
	<input type='text' id='birth' placeholder='YYYYMMDD'> <!-- 앞부분 -->
	<label>-</label> 
	<input type='text' id='gender' size='4'>  <!-- 뒷부분 -->
	<p/>
	<div id='result'></div>
</div>
<script>

$('#keyup>#birth').keyup(function(abc){
	var str = abc.keyCode;    // 이벤트영역의 문자열을 가지고오기.
	$('#result').text(str);
	console.table(abc);
	
	//입력된문자열의 길이를 계산하여 8자이면 커서를 성별을 입력하는 항목으로 이동.
	if($(this).val().length >= 8){
		$('#gender').focus().select(); // select 로 focus로 넘긴 칸을 선택해줌
		
	}	// 입력상자 val
}); // keyup 이벤트로 이동.

//성별이 입력되면 홀수이면 '남자' 짝수이면 '여자' 를 결과창에 출력
$('#keyup>#gender').keyup(function(){
	var gen = Number($(this).val());
	var str = '';
	if(gen%2 == 0){
		str = '여성';
	}else{
		str = '남성';
	}
	$('#result').html(str);
});

</script>

</body>
</html>















