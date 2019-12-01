<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ex03-03Form</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>ex03-03Form</h2>
	
	<form method="POST" action="ex03-03Pro.jsp">
		<dl>
			<dd>
				<label for="number">곱해질 값 : </label>
				<input type="number" name="number" autofocus required />
			</dd>
			
			<dd>
				<label for="num">곱해질 횟수 : </label>
				<input type="number" name="num" required />
			</dd>
			
			<dd>
				<input type="submit" value="확인" />
			</dd>
		</dl>
	</form>
</body>

</html>