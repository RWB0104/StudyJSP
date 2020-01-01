<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>방명록</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script>
		function cls()
		{
			document.getElementById("name").value = "";
			document.getElementById("desc").value = "";
		}
	</script>
</head>

<body>
	<h2>방명록</h2>
	
	<form method="POST" action="ex04-01Pro.jsp">
		<dl>
			<dd>
				<label for="name">이름</label>
				<input id="name" name="name" type=text autofocus required />
			</dd>
			
			<dd>
				<label for="desc">내용</label>
				<input id="desc" name="desc" type=text required />
			</dd>
			
			<dd>
				<input type="submit" value="등록" />
				<input type="button" value="다시쓰기" onclick="cls();" />
			</dd>
		</dl>
	</form>
</body>

</html>