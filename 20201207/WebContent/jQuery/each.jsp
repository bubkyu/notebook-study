<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>each</title>
</head>
<body>
	<div id='each'>

		<div id='source'>
			<div>
				<font color='red'>가</font>
			</div>
			<div>나</div>
			<div>다</div>
			<div>라</div>
			<div>마</div>
		</div>

		<div id='target'>몇개인가?</div>
		<!--  결과값 입력 -->

		<div id='btns'>
			<input type='button' value='SIZE' id='btnSize' /> 
			<input type='button' value='TEXT' id='btnText' />
			<input type='button' value='HTML' id='btnHtml' />
		    <input type='button' value='EACH' id='btnEach' />
		</div>
	</div>
	<script>
		// a(); 함수가 선언되기전에 호출해도됨.
		// b(); 함수가 선언되기 전이기 때문에 호출할수 없음.
		// function a(){} --> 스크립트가 실행되면 메모리에 상주하게됨.
		// var b = function(){} --> 함수를 호출하는 시점에 메모리에 올라감.
		/*
		$(document).ready(function(){
		  code... 이렇게 쓰는거는 head 부분에 script 넣어서 작업할 때 이벤트 처리 코드방식
		  (head부분이 먼저 로드되고 그 후에 body 부분이 로드되기 때문에 document가 전부 ready가 끝났으니 이벤트 처리를 하라는 식의 코드)
		  
		});*/

		/*
		 $(function(){
		 위 코드의 축약형 head부분에서는 위 방식으로 사용 body 부분에서는 축약형 가능?
		 body 부분에서는 이 축약형 조차 생략하고 바로 사용 가능하다.
		 });*/

		// $('#each #btnSize') - 이는 > 사용하지 않고 sp로 바로 지정하는데 이는 후손(sp 사용)이기 때문이다. 
		// 아래 방식도 결국 같은 처리는 하지만 >를 사용해서 정석 루트로 자손(> 사용)을 따라가면서 표기를 한 것이다.
		$('#target').css({ // 박스 크기 , 속성 만들기
			'border' : '2px solid #aaa',
			'padding' : '35px',
			'width' : '100px'
		})

		$('#each #btnSize')[0].onclick = function() { // size 의 갯수 출력
			var len = $('#each>#source>div').length; // .length
			$('#each>#target').html('div 개수: ' + len);

		}

		$('#each #btnText')[0].onclick = function() { // 텍스트박스에 한글로 나오기
			var div = $('#each>#source>div').get(0);
			var text = $(div).text();
			$('#each #target').text(text);

			//var div = $('#each>#source>div').first();	선택해서 사용
		}

		//var div = $('#each>#source>div:first');   선택해서 사용

		$('#each #btnHtml')[0].onclick = function() {
			let div = $('#each>#source>div:first');
			let html = $(div).html();
			$('#each #target').html(html); // font color=red

		}

		$('#each #btnEach')[0].onclick = function() {
			let bg = [ '#00f', '#99f', '#44f', '#aaf', 'red' ]; // 백그라운드 색
			$('#each>#source>div').each(function(index) {
				$(this).css('background-color', bg[index]);
			})
			// each 는 for문과 동일하게 사용.
		}
	</script>
</body>
</html>













