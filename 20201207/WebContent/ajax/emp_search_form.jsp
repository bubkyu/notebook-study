<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_search_form</title>
<style type="text/css">

#items>div{
	display : inline-block;
	width: 200px;
	height: 200px;
	border: 1px solid #ccc;
	padding : 5px;
	box-shadow : 2px 2px 3px #999;
	border-radius:9px;

}
.emp>div:first-child{		// 사번 입력창의 이펙트효과
	color:#00f;
	border-bottom : 1px dotted #555;
	}
.emp>div:nth-child(2){	// 성명창의 이펙트 효과
font-weight : bolder;
}
</style>
</head>
<body>
	<div id='emp_search_form'>
		<form name='frm' method='post' id='frm'>
			<label>검색어를 임력하세요.</label>
			<input type='text' name='findStr' />	<!-- form에 입력된 정보를 가지고 emp_search 에 요청  -->
			<input type='button' value='검색' id='btnFind' />
		</form>
		<hr/>
		<div id='items'></div>
			
		</div>
	<script>
	$('#btnFind').on('click',function(){
		let param = $('#frm').serialize();  // form 에 있는 값을 직열화 시킨다. findStr = 123;
		let req = new XMLHttpRequest(); // 생성하고
		req.open('get', './ajax/emp_search.jsp?' + param);	//오픈하고 // 모든 파라미터의 시작은 ? 부터
		req.onreadystatechange=function(){	// 이벤트 생성하고
			//console.log(req.status + "," + req.readyState);
		if(req.status==200 && req.readyState==4){
			$('#items').html(req.responseText);
			
		}
			
		}
		req.send();
		
	})
	
	
	</script>
</body>
</html>





