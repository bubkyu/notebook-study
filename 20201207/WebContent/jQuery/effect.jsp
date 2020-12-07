<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>effect</title>
<style type="text/css">
#parent{
	height : 10px;
}
#target{
	background-image: url(https://i.pinimg.com/736x/e7/d2/ab/e7d2ab0cf45c40522b88c8f2dec0ed3d.jpg);
	 /* 단독페이지 사용
	 */
	 
	background-size:100%;
	border-radius:10px;
	width:90%;
	height:300px;
	
}

</style>

</head>
<body>
	<div id='effect'>
		<div id='parent'></div>
			<div id='target'></div>
		<div id='btns'>
			<input type='button' value='SHOW' 			id='btnShow' />
			<input type='button' value='HIDE' 			id='btnHide' />
			<input type='button' value='TOGGLE' 		id='btnToggle' />
			<input type='button' value='SLIDE DOWN' 	id='btnSlideDown' />
			<input type='button' value='SLIDE UP' 		id='btnSledeUp' />
			<input type='button' value='SLIDE TOGGLE' 	id='btnSlideToggle' />
			<input type='button' value='FADE IN' 		id='btnFadeIn' />
			<input type='button' value='FADE OUT' 		id='btnFadeOut' />
			<input type='button' value='ANI' 			id='btnAni' />
					
		</div>
	</div>
	<script>
		
	$('#btnShow').on('click', function(){
		$('#target').show(1500);
		
	})
	
	$('#btnHide').on('click', function(){
		$('#target').hide(1500);
	})
	
	$('#btnToggle').on('click', function(){
		$('#target').toggle(700);
	})
	
	$('#btnSlideDown').on('click', function(){
		$('#target').slideDown(1000);
	})
	
	$('#btnSledeUp').on('click', function(){
		$('#target').slideUp(1000);
	})
	
	$('#btnSlideToggle').on('click', function(){
		$('#target').slideToggle(700);
	})
	
	$('#btnFadeIn').on('click', function(){
		$('#target').fadeIn();
	})
	
	$('#btnFadeOut').on('click', function(){
		$('#target').fadeOut();
	})
	
	$('#btnAni').on('click', function(){
		$('#target').animate({
			'width'    : 'toggle',
			'opacity'	: 'toggle',
			'height'	: 'toggle'
		});
	})
	
	
	
	</script>	
	
</body>
</html>






