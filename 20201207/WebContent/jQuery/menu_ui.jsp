<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu_ui</title>
<link rel="stylesheet" type="text/css" 
href="https://code.jquery.com/ui/1.12.1/themes/sunny/jquery-ui.css">
<script src='https://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>

<style>
#menu{
	width: 120px;
	text-align: center;
}

</style>
</head>
<body>
<div id='menu_ui'>	<!-- 전체페이지를 나타냄. -->
	<ul id='menu'>
		
		<li>		<!-- jquery-ui.css 에 들어가서 확인함. -->
		<a href='#'>강이름</a>
		<ul>
			<li><a href='#'>한강</a>
			<li><a href='#'>두만강</a>
			<li><a href='#'>낙동강</a>
			<li><a href='#'>금강</a>
			<li><a href='#'>북한강</a>
			
		</ul>
		</li>
		
		<li>		<!-- jquery-ui.css 에 들어가서 확인함. -->
		<a href='#'>산이름</a>
		<ul>
			<li><a href='#'>금산</a>
			<li><a href='#'>백두산</a>
			<li><a href='#'>한라산</a>
			<li><a href='#'>아차산</a>
			<li><a href='#'>태백산</a>
			
		</ul>
		</li>
		
		<li>		<!-- jquery-ui.css 에 들어가서 확인함. -->
		<a href='#'>과일명</a>
		<ul>
			<li><a href='#'>사과</a>
			<li><a href='#'>바나나</a>
			<li><a href='#'>메론</a>
			<li><a href='#'>포도</a>
			<li><a href='#'>한라봉</a>
			
		</ul>
		</li>
		
			
		<li>		<!-- jquery-ui.css 에 들어가서 확인함. -->
		<a href='#'>동물명</a>
		<ul>
			<li><a href='#'>사자</a>
			<li><a href='#'>고양이</a>
			<li><a href='#'>강아지</a>
			<li><a href='#'>사람</a>
			<li><a href='#'>원숭이</a>
			
		</ul>
		</li>
		
	</ul>


</div>
<script>
$('#menu').menu();

</script>
</body>
</html>



