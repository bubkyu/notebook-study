<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>taps</title>
<link rel='stylesheet' type='text/css'
		href="https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css">

<script src='https://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>


</head>
<body>
	<div id='tabs'>
		<!--  상단 탭 메뉴 -->
		<ul>
			<li><a href='#web'>WEB</a></li>
			<li><a href='#app'>App</a></li>
			<li><a href='#framework'></a></li>
			<li><a href='#office'>Office</a></li>
			<li><a href='#bigData'>Big Data</a></li>
		</ul>
		
		<!-- 각 탭에 해당하는 컨텐츠 내용들 -->
		<div id='web'>web Programming haha</div>
		<div id='app'>app application hah</div>
		<div id='framework'>framework 는</div>
		<div id='office'>사무 자동화에 필요한</div>
		<div id='bigData'>빅데이터</div>
		
	</div>
	
<script>
	$('#tabs').tabs();
</script>
</body>
</html>