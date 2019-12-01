<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>XMLHttpRequest 객체 사용 - XML파일을 텍스트형식으로 표시</title>
	
	<script src="../../js/ch07/xhrTest1.js"></script>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
		
		div#displayArea	{ 
			width: 200px;
			height: 200px;
			border-color: #6699FF;
			border-style: double;
		}
	</style>
</head>

<body>
	<div id="displayArea">
		이곳의 내용이 변경
	</div>
	
	<form>
		<input type="button" value="표시" onclick="startMethod();" />
	</form>
</body>

</html>