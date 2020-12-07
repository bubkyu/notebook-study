<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>traverse</title>

<script src='../lib/jquery-3.5.1.min.js'></script>

</head>
<body>

<div id="traverse">
	<h1>TRAVERSE</h1>
	<fieldset>
		<legend>traverse</legend>
	<ul>
		<li>traverse는 '.' 을 찍어서 표현한다.</li>
		<li>명령어는 filter와 traverse가 매우 유사하거나 상충되기
			때문에 개인적인 취향에 따라
			사용 빈도수가 달라질 수 있다.</li>
		<li>종류 => .eq(index), .first(), .last(), .slice(start [, end])</li>
		<li>method =>.children(expr), .find(expr), .parent(expr)
					.next(expr), .prev(expr)</li>
			
	</ul>
	</fieldset>
	
	<ul> 
		<li>백두산</li>
		<li>금강산</li>
		<li>설악산</li>
		<li>치악산</li>
		<li>내장산</li>
		<li>속리산</li>
		
	</ul>
	
	<!--  .parent() example code -->
	<div id='div1'>
		<input type='button' value='x' class='btn1'/>
	</div>
	
	<div id='div2'>
		<input type='button' value='x' class='btn2'/>
	</div>
	
</div>
<script>
	$('#traverse>ul>li').first().css('color', '#f00');
	/// 후손( 빈공간의 깊이에 관계 없이 모든 ul) 
	$('#traverse>ul>li').filter(':odd').css('color', '#00f');
	/// css 방식으로 사용해도 상관없음.
	$('#traverse>ul>li').slice(1, 4).css('font-family', '궁서체');
	/// slice() = s <= < e 선택하고 싶은 영역 
	
	
	// div1, div2 의 넓이와 높이를 지정하시오.(TODO)
	$('#traverse>div').css({
		'height'	:'100px',
		'width'		:'100px'
		//'border' 	: '1px solid #444'	
	});
	// btn1, btn2 의 넓이와 높이를 지정하시오.(TODO)
	$('#traverse>div>.btn1 ,#traverse>div>.btn2').css({
		'height'	: '20px',
		'width'		: '20px'
		});
		
		//btn1, btn2 에 이벤트 처리
		var btn1 = $('.btn1')[0];
		btn1.onclick = function(){
			
			var p = $(btn1).parent();
			$(p).css('background-color' , '#88f');
			//$(btn1).parent().css('background-color', '#88f');
		}
		
		var btn2 = $('.btn2')[0];
		btn2.onclick = function(){
			
			$(this).parent().css('background-color', '#f99');
			// this 는 이벤트가 발생된 본인 자신을 나타냄
			
		}
	
</script>


</body>
</html>





