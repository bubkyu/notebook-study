<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sortable</title>

<style>
	#items>li{
		list-style : none;
		border : 1px solid #eee;
		width : 200px;
		height : 30px;
		text-align : center;
	}
	
	 #items li:hover{
         cursor : pointer;

	}
</style>


</head>
<body>
<div id='sortable'>
	<ul id='items'>
		<li>html5</li>
		<li>css3</li>
		<li>javascript</li>
		<li>java</li>
		<li>jdbc</li>
		<li>jquery</li>
		<li>ajax</li>
		<li>mybatis</li>
		<li>jsp</li>
		<li>spring boot</li>
		<li>final project</li>
				
	</ul>
</div>
</body>
</html>