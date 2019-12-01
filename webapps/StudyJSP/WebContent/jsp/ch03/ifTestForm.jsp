<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>if-else문 예제 - 좋아하는 색 선택</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>if-else문 예제 - 좋아하는 색 선택</h2>
	
	<form method="post" action="ifTest.jsp">
		<dl>
			<dd>
				<label for="name">이름</label>
				<input id="name" name="name" type="text" placeholder="홍길동" autofocus required />
			</dd>
			
			<dd>
				<label for="color">색선택</label>
				
				<select id="color" name="color" required>
					<option value="blue" selected>파랑색</option>
					<option value="green" selected>초록색</option>
					<option value="red" selected>빨강색</option>
					<option value="yellow" selected>기타</option>
				</select>
			</dd>
			
			<dd>
				<input type="submit" value="확인" />
			</dd>
		</dl>
	</form>
</body>

</html>