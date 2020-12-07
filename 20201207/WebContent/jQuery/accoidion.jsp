<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>accordion</title>
<link rel="stylesheet" type="text/css" 
href="https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css">
<script src='https://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
</head>
<body>
<div id="accordion">
   <h2>HTML5</h2>
      <ul>
         <li>웹표준의 시작</li>
         <li>현재 5버전이지만 대중화된 버전은 4.x버전</li>
         <li>canvas나 localStorage등과 같은 있지만 국내에서는 아직... 
      </ul>
   <h2>CSS3</h2>
      <div>
         <img src="https://img.animalplanet.co.kr/news/2020/07/15/700/e05t9x1o0e3trklpwrr3.jpg">
      </div>
   
   <h2>JAVASCRIPT</h2>
   <h2>JDBC</h2>
   <h2>JAVA</h2>
   <h2>JSP</h2>
   <h2>ORACLE</h2>
   <h2>SPRING</h2>
   <h2>JQUERY</h2>
</div>
<script type="text/javascript">
   $('#accordion').accordion();
</script>
</body>
</html>