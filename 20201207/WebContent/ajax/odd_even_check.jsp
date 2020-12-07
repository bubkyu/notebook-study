<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// file name : odd_even_check.jsp
	// 서버에서 처리할 내용을 ui에서 분리함.
	
			String temp = request.getParameter("su");
			String msg = ""; // 결과메서지.
			int su = 0;
			if(temp != null && !temp.equals("")){ // "" -> 공백이라면
				su = Integer.parseInt(temp); // 문자열로 들어온것을 int 로 변경
				if(su%2==0){
					msg = su+ "짝수";
					
				}else{
					msg = su+"홀수";
				}
			}
		out.print(msg);	// 출력하는 로직을 추가

%>