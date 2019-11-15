<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>주석 예제</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>주석 예제</h2>
	
	<%
		// 자바 주석입니다.
		// 문자열 변수 선언 및 초기값 할당
		String str1 = "소스보기를 하면 화면에 표시됩니다.";
		String str2 = "소스보기를 해도 화면에 뵤시되지 않습니다.";
	%>
	
	<!-- HTML 주석입니다. <%=str1 %> -->
	<%-- JSP 주석입니다. <%=str2 %> --%>
</body>

</html>