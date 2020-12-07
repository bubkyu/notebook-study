<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>one</title>
<style type="text/css">
#one>#result{
	
	border	:	1px solid #44f;
	height	:	120px;
	width	:	350px;
	text-align	:	center;
	line-height	:120px;
	
}

#one>#button{
	
	width	:	70px;
	height	:	30px; 
	
	
	}
</style>

</head>
<body>
	<div id='one'>
	<!-- 연결된 이벤트 핸들러가 한 번 실행되고 나서는, 더는 실행되지 않는다. -->
	<!-- 또한 같은 이벤트에 대해 연결된 이벤트 핸들러가
	한번 실행된 후에는 다른 이벤트 핸들러를 실행하고 싶을 때도 사용 가능. -->	
		<div id='result'>송금 클릭</div>
		<input type ='button' value='송금' id='btnSend' />
	
	</div>
	<script>
		let cnt=0; // 전송 횟수
		
		$('#btnSend').click(function(){
			if(cnt==1) return false;
			cnt++;
			$('#result').html(cnt + '회 송금');
		})
		
	/*
		$('#btnSend').click(function(){
			cnt++;
			$('#result').html(cnt + " 회 송금됨.");
			$(this).attr('disabled', 'disabled');
	*/
	
	/*
	$('#btnSend').one('click',function(){
		cnt++;
		$('#result').html(cnt + "회 송금됨");
	})
	*/
	
	
	</script>
</body>
</html>







