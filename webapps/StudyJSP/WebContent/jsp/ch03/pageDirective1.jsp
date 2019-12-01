<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" info="copyright by RWB"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>page 디렉티브 예제1 - info, language, contentType 속성사용</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>page 디렉티브 예제1 - info, language, contentType 속성사용</h2>
	<%=getServletInfo() %>
</body>

</html>