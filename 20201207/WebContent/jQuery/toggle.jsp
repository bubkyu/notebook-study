<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>toggle</title>
<style>

	#target{
	
	border		:	5px	solid	#bbb;
	width		:	400px; 
	height 		:	150px;
	font-weight	:	bolder;
	text-align	:	center;
	line-height	:	100px;
	
	}
	#btnToggle{
	width		:	120px;
	height		:	30px;
	line-height	:	30px;
	
	}
	
	.target_on{
	background-color	:	#ff0;
	color				:	#f00;
	visibility			:	visible;
	
	}
	.target_off{
	background-color	:	#000;
	color				:	#fff;
	}
	

</style>


</head>
<body>
	<div id='toggle'>
		<div id='target'></div>
		<br/>
		<input type='button' value='ON/OFF' id ='btnToggle' />
	</div>
	<script>
	$('#btnToggle').on('click', function(){
		$('#target').toggle(even, odd);	
	})
	
	// .toggle()은 선택한 요소가 보이면 보이지 않게, 보이지 않으면 보이게 한다.
	function even(){
		$('#target').attr('class', '.target_on');
	// .attr -> 선택한 요소의 값을 가져온다.
	// 타겟의 요소의 클래스 속성의 값을 가져온다.
	}
	function odd(){
		$('#target').attr('class', 'target_off');
		
	}
	
	</script>
</body>
</html>






