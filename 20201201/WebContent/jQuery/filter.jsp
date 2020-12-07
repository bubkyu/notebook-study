<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='../lib/jquery-3.5.1.min.js'></script>
</head>
<body>
<div id='filter'>

	<fieldset>
		<legend>filter</legend>
		<ul>
			<li>선택된 요소중 필요한 요소만을 걸러내는 방법
			<li>접두문자 ':' 을 사용한다.</li>
			<li>필터와 필터를 연결하여 사용할 수 있다</li>
			<li>종류 => :eq(index), :even, :odd,
						 :first, :last, :gt(index), :lt(index)</li>
		</ul>
	
	</fieldset>
	
	<ol start='0'>
		<li>백두산</li>
		<li>금강산</li>
		<li>설악산</li>
		<li>치악산</li>
		<li>내장산</li>
		<li>속리산</li>
		
	</ol>
	<div id='items'>
		<div>반갑..1</div>
		<div>반갑..2</div>
		<div>반갑..3</div>
		<div>반갑..4</div>
		<div>반갑..5</div>
		<div>반갑..6</div>
	</div>
	
</div>
<script >
	// ul 태그안에 있는 첫번째 li
	$('#filter>ol>li:first').css('color', '#f00');
	$('#filter>ol>li:odd').css('font-weight', 'bolder'); // 홀수 부분
	$('#filter>ol>li:even').css('color', 'blue'); // 짝수부분
	
	// items 안에 있는 div의 색상을 홀짝수로 나뉘어 표시되도록 하기.
	
	$('#filter>#items>div:odd').css('background-color', 'red');
	$('#filter>#items>div:odd').css('color', 'white');
	// json 으로 표현하기
	$('#filter>#items>div:even').css({
		'background-color' : 'black',
		'color'				:'white'
	
	});
	
</script>

</body>
</html>






