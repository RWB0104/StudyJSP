<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title></title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<form method="POST" action="beanTestPro.jsp">
		<dl>
			<dd>
				<label for="id">아이디</label>
				<input id="id" name="id" type="text" placeholder="aaaa" autofocus required />
			</dd>
			
			<dd>
				<input type="submit" value="입력완료" />
			</dd>
		</dl>
	</form>
</body>

</html>