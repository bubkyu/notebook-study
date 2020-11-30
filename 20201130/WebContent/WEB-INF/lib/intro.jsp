<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--다룬로드 돈 라이브러리 사용함.  -->
<script src='./lib/jquery-3.5.1.min.js'></script>

</head>
<body>
<% //스크립트릿(scriptlet) : java coding area
	// System.out.println()
	// javascript : document.write(), console.log()
	
	out.print("hi jQuery...");

%>
<h1 id = 'header'>jQuery Test를 위한 태그</h1>

<ul>

	<li><a href='index.jsp?inc=./jquery/filter.jsp'>FILTER</a></li>
	<li><a href='index.jsp?inc=./jquery/traverse.jsp'>TRAVERSE</a></li>
	
	</ul>

<script>
$('#header').css('color','blue'); // 동적으로 바꿀수 있음.
// CSS 로 표현 -> #header{color : blue;} // 한번정해지면 바뀔수 없다.

</script>
</body>
</html>