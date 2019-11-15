<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>선언문 예제 - 변수선언</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>선언문 예제 - 변수선언</h2>
	
	<%
		// 문자열과 전역 변수 str2의 값을 결합해 선언한 지역 변수 str1에 저장
		// 문자열 결합
		String str1 = "Game ID - " + str2;
	%>
	
	<%!
		// 전역 변수 str2 선언
		String str2 = "Kingdora";
	%>
	
	<%=str1 %>
</body>

</html>