<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>begin</title>
<style>
#result{
	
	width: 400px;
	height: 250px;
	background-color: #eee;
	
	}
</style>
</head>
<body>
<div id='begin'>

	<fieldset>
		<legend>Ajax의 특징</legend>
		<!--ajax를 통해 전체 페이지가 새로고침되는 현상을 피할 수 있음  -->
		<!--전체 페이지가 새로고침되지 않도록 하는 것이 ajax를 사용하는 목적 -->
		<!-- ajax를 통해 전체 페이지가 새로고침되게 하지 않으려면,
		     1) 서버에서 처리할 내용을 ui에서 분리
		     2) 서버는 처리된 내용을 화면에 출력하는 로직을 추가한다.
		     3) ui단에서는 XMLHttpRequest 객체를 사용하여,
		     	서버의 처리 결과를 가져온다. 
		   
		   
  ex1) emp_search_form.jsp / emp_search.jsp(검색을 처리함)		     	/ EmpDao.java / EmpVo.java
	 검색어를 입력하여 first_name or email or phone_number
     에 포함되어 있으면, 
     employee_id, first_name, email, phone_number를 화면에 표시	-->
		
		<ul>
			<li>별도의 외부 플러그인이나 라이브러리, ActiveX와 같은
				API 프로그램들이 필요 없다.</li>
			<li>브라우저내부에 있는 자바스크립트만으로 처리가능하다.</li>
			<li>비동기방식으로 서버와 통신하며, 브라우저의 새로고침없이
				특정영역의 내용을 동적으로 변경할 수 있다.</li>
			<li>프로그램 방식을 Web방식에서 App방식으로 처리할 수 있다.</li>
			<li>AJAX(Asynchronous JavaScript XML)의 약자</li>
			<li>Ajax의 가장 중추적인 역활을 하는 객체는 XMLHttpRequest 이다.</li>	
			
		</ul>
	</fieldset>
	
	<h3>홀짝수 체크</h3>
	<p>간단 테스트(서버의 결과를 표시해 주기 위해 전체 화면이 새로고침 되느냐
		아니면 필요한 부분만 새로고침 되느냐)</p>
		<%
		
		%>
	
	<form name='frm' method='post'>
		<lablel>정수를 입력하시오.</lablel>
		<input type='text' size = '6' name='su'>
		<!--  -->
		<input type='submit' value='Check' />
	
	</form>	
		<div id='result'> <!-- 위의 3가지 값이 들어옴 -->
		
		</div>
<script>
	//ajax를 통해 서버의 처리 결과를 result 에 표시
	//파라미터를 가져온다.
	var frm = document.frm;
	frm.onsubmit = function(){
	var param = "?su=" + frm.su.value;
	// 롬테그안에 수가 가지고 있는 것을 가져와서 더해준다.
	
	var req = new XMLHttpRequest(); // request 객체를 생성한다. // 1번으로 샐행된다.
	req.open('get', './ajax/odd_even_check.jsp' + param); // 요청 정보를 생성	// 2번으로 실행된다.
	req.onreadystatechange=function(){ // 3번으로 실행된다.
		// 상태변화가 일어났을때 변하는 함수 , 전송된 정보가 정상적으로 전송되었는지
		// 서버는 다시 되돌리는 응답정보가 정상인지 체크
		
		
		//req.status == 200 -> 의 의미는 정상요청 req.readyState==4 -> 정상응답을 나타내는 상태값
		if(req.status==200 && req.readyState==4){ // 요청 ,응답이 모두 정상일때 정상작동됨.
			var r = document.getElementById('result');
			r.innerHTML = req.responseText;
			// 응답결과를 집어넣음.
			//r이라고하는 정보는 result값만 사용하겟다는거임.
		
			// 위의 내용을 jQuery 코드로 사용하는것
			// $('#result').html(req.responseText);
			 
		}	
	
	}
		req.send(); // 요청 정보를 서버에 전송	
		
		return false; // submit 의 고유의 기능을 취소
	}
	
</script>
		
</div>
</body>
</html>