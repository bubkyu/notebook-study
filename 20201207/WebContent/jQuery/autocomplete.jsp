<%@page import="bean.AutoComplete"%>	<!-- jsp에서의 임포트 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>autocomplete</title>
<link rel="stylesheet" type="text/css" 
href="https://code.jquery.com/ui/1.12.1/themes/sunny/jquery-ui.css">
<script src='https://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
</head>

<body>

<% 
// oracle db 연결
// 중요함
AutoComplete ac = new AutoComplete();	//객체를 만들고
String data = ac.getData();				

/* ['java', 'jara', 'jagopa', 'jsp', 'javascript', 
'like', 'love', 'life']
이런식으로 출력됨.		*/

%>



<div id='autocomplete'>
	<label>성명을 입력하세요.</label>
	<input type='text' name='findStr' id='findStr' />
	<input type='button' value='검색' id='btnFind' />
</div>

<script>
	// var data =  ['java', 'jara', 'jagopa', 'jsp', 'javascript', 
    // 					'like', 'love', 'life'] 
	// 중요함
	var data = <%=data%>	
	$('#findStr').autocomplete({
		source : data
	});
</script>
</body>
</html>