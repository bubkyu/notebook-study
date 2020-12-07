<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<!-- cnd 형태로 사용하기. -->
<!--  script 는 헤드와 헤드사이에 작성한다. -->
<script src="https://code.jquery.com/jquery-3.5.1.js" 
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous"></script>
</head>
<body>
<% // 자바영역임
	// inc 에 대한 조치
	String inc = "intro.jsp";
	if(request.getParameter("inc") != null){
		inc = request.getParameter("inc");
	}
	// index.jsp?abc=./jquery/filter.jsp
	// request 는 사용자의 요청 정보.
	//
	
	//sub 에 대한 조치
	  String sub = "./jquery/menu.jsp";
   if(request.getParameter("sub") != null) {
      sub = request.getParameter("sub");
   }
%>

<div id='index'>
	
	<header id='header'>
		<nav id='nav'>
			<ul>
				<li><a href='index.jsp'>HOME</a></li>
				 <li><a href = 'index.jsp?sub=./jquery/menu.jsp'>JQUERY</a></li>
               <li><a href = 'index.jsp?sub=./ajax/menu.jsp'>AJAX</a></li>
               <li><a href = 'index.jsp?sub=./mybatis/menu.jsp'>MYBATIS</a></li>
				<li>방명록</li>
				<li>게시판</li>
				<li>회원관리</li>
			</ul>
		</nav>
	
	</header>
	<section id='contents'>
		
		<article class='content'>
			
			<jsp:include page="<%=inc %>"/>	
		
		<!-- 		<% 

					//String inc = "intro.jsp";
					//if(request.getParameter("inc") != null){
					//inc = request.getParameter("inc");
					//	}
					// index.jsp?abc=./jquery/filter.jsp
					//%>
			 -->
			
		</article>
		
		<aside class='aside'>	
			<!-- 오른쪽 중앙 -->
			<img src='http://placehold.it/150X100'>
			<div id='sub_menu'> 		<!--  오른쪽 중앙 아래 -->
			<jsp:include page='<%=sub %>'/>
		</div>
		
		</aside>
			
	</section>
	<footer id='footer'>융합 S/W 개발(주)</footer>
	
</div>
<script>

	// 모든 기본 태그의 마진, 패팅을 0 설정
	// $().css()  --> CSS의 기본 골격 (틀)
	
	$('*').css('margin', '0px');
	$('*').css('padding', '0px');
	//$('*') 전체 패그에 영향을 주는 의미
	// 패딩의 증가의 영향을 최소화 하기위한 조치
	
	$('*').css('box-sizing', 'border-box');
	$('a').css('text-decoration','none');
	// index 페이지의 넓이와 중앙배치
	
	$('#index').css('width', '800px');
	$('#index').css('margin', 'auto');
	
	//header 의 높이와 바탕색
	
	$('#index>#header').css('height', '150px');
	$('#index>#header').css('background-color', '#ccc');
	$('#index>#header').css('margin-top', '5px');
	
	$('#index>#header').css('position' , 'relative');	// 오른쪽 하단 지정
	
	// header>nav
	$('#header>#nav').css({			// 오른쪽 하단 지정
		'position'	:'absolute',
		'right'		:'2px',
		'bottom'	:'2px'
	})
	$('#header>#nav>ul').css({
		'list-style' : 'none'
	})
	$('#header>#nav>ul>li').css({	// 게시판 메뉴
		'display' : 'inline-block',
		'padding' : '3px',
		'width'	  : '70px',
		'background-color' : 'red',
		 'text-align' : 'center'
	})
	
	$('#header>#nav>ul>li').first().css('border-radius' , '10px 0 0 10px');
	$('#header>#nav>ul>li').last().css('border-radius' , '0 10px 10px 0');
	//contents 는 최소높이만
	
	$('#index > #contents').css('min-height', '250px');
	
	// height 와 min-height 의 차이점????
	// min-height 속성은 지정된 HTML 요소가 가질 수 있는 최소 높이를 설정한다.
	// 이 속성의 기본 설정값은 0이며, 해당 HTML 요소의 높이에 제한을 두지 않겠다는 의미이다.
	// 즉, height 속성값이 min-height 속성값 이하로 낮아지지 않도록 해야한다.
	// 출처 - tcpschool.com/css/css_boxmodel_dimension
	
	// footer 높이와 바탱색
	$('#index>#footer').css('height', '100px');
	$('#index>#footer').css('background-color', '#bbb');
	$('#index>#footer').css('text-align', 'center');
	$('#index>#footer').css('line-height', '100px');
	
	//footer 높이와 바탕색등등을 JSON 표기법으로 변경해보기.
	// 1. KEY:VALUE => {KEY : VALUE, KEY:VALUE , ...}
	/*$('#index>#footer').css({
		'height' 			: '100px',
		'background-color' 	: '#bbb',
		'text-align' 		:'center',
		'line-height' 		: '100px'
	});
	*/
	$('#index>#contents').css({
		'margin-top' 	: '3px',
		'margin-botton' : '3px'
	})
	$('#index>#contents>.content').css({
		'width' : '650px',
		'float' : 'left'
		
	});
	
	$('#index>#contents>.aside').css({
		'width' : '150px',
		'float' : 'left'
		
	});
	
	$('#index>#contents>.aside>#sub_menu').css({	// 가운데 오른쪽 밑 상자
		'width'	: '150px'
		
	})
	
	$('#index>#contents>.aside>#sub_menu>ol').css({	// 가운데 오른쪽 밑 상자
		'margin-left' : '20px'
	})
	
	
</script>


</body>
</html>






