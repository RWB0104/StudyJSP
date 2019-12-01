<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>includeTestForm.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<form method="POST" action="includeTest.jsp">
		<dl>
			<dd>
				<label for="name">이름</label>
				<input id="name" name="name" type=text placeholder="김개동" autofocus required />
			</dd>
			
			<dd>
				<label for="pagename">포함할페이지</label>
				<input id="pagename" name="pageName" type=text value="includedTest.jsp" required />
			</dd>
			
			<dd>
				<input type="submit" value="전송" />
			</dd>
		</dl>
	</form>
</body>

</html>