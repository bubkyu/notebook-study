<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>drop</title>
<link rel='stylesheet' type='text/css'
		href="https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css">

<script src='https://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
<style>
.abc{
	background-color : #aaa;
	}
	#drop>div{
	border : 2px solid #00f;
	
	}
	
	#drag{		
	border : 2px solid #00f;						
	wdith : 100px; 
	height : 100px;
	}
	
	#droppable{
	width : 300px;
	 height : 300px;
	}
</style>

</head>
<body>
<div id='drop'>
	<div id = 'drag'>이부분을 옮겨보시오.</div>
	
	
	<div id='droppalbe'>이곳에 두세요.</div>
</div>

<script>
	$('#drag').draggable();
	$('#droppable').droppable({
		drop : function(){
			$(this).addClass('abc');
			$(this).html('참 잘했음');
			//abc 클래스를 한번에 합친다.
			//$(this).attr('class', 'abc') attr 은 범용성이 좋다.
		},
		out : function(){
			$(this).html('어디로?');
			$(this).removeAttr('class')
		}
	})
</script>
</body>
</html>





