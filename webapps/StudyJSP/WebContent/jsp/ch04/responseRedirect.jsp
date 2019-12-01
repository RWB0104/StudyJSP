<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>response 객체 예제 - sendRedirect() 메소드의 사용</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%-- 출력 버퍼에 추가 --%>
	<h2>response 객체 예제 - sendRedirect() 메소드의 사용</h2>
	
	<%-- 출력 버퍼에 추가 --%>
	현재 페이지는 <b>responseRedirect.jsp</b> 페이지입니다.
	
	<%-- 출력 버퍼에 비움 --%>
	<% response.sendRedirect("responseRedirected.jsp"); %>
</body>

</html>