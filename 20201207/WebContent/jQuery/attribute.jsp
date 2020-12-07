<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attribute</title>

<style>	

	#target{ 
	border:1px solid #aaa;
	width : 400px;
	height : 200px;
	}
	
	.a_type{
	background-color:black;
	color	: #fff;
	
	}
	.a_type>h1{
	color : #fff;
	font-family:궁서체;
	
	}
	
	.b_type{
	background-color : #f99;
	color : #ff0;
	}
	.b_type>h1{
	color : #ff0;
	font-family:명조체;
	}
	
	.c_type{
	background-color : green;
	color : #fff;
	}
	.c_type>h1{
	color : #yellow;
	font-family:고딕체;
	}
	
</style>

</head>
<body>
<div id='attr'>
	<div id='target'>
		<h1>이렇게 하는거구나</h1>
	</div>

	<div id='btns'>
		<input type='button' value='A Type' id='btnAtype'/>
		<input type='button' value='B Type' id='btnBtype'/>
		<input type='button' value='C Type' id='btnCtype'/>
		<input type='button' value='초기화' 	id='btnBack'/>
	</div>
</div>

<script>

// A,B type 에 click event 추가
var target = $('#attr>#target');

$('#attr #btnAtype')[0].onclick = function(){
	$(target).attr('class', 'a_type');
}
// .attr - html의 속성(attrubute)을 다룬다.
$('#attr #btnBtype')[0].onclick = function(){
	$(target).attr('class', 'b_type');
}

$('#attr #btnCtype')[0].onclick = function(){
	$(target).attr('class', 'c_type');
}

$('#attr #btnBack')[0].onclick = function(){ //초기화버튼
	$(target).attr('class', '초기화');
}




</script>

</body>
</html>




