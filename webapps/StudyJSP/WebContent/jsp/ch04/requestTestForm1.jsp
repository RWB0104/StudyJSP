<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>request 예제 - 요청 메소드</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>request 예제 - 요청 메소드</h2>

	<form method="POST" action="requestTest1.jsp">
		<dl>
			<dd>
				<label for="name">이름</label>
				<input id="name" name="name" type="text" placeholder="김개동" autofocus required />
			</dd>
			
			<dd>
				<label for="age">나이</label>
				<input id="age" name="age" type="number" min="20" max="99" value="20" required />
			</dd>
			
			<dd>
				<fieldset>
					<legend>성명</legend>
					
					<input id="gender" name="gender" type="radio" value="m" checked />
					<label for="gender">남</label>
					
					<input id="gender" name="gender" type="radio" value="f" checked />
					<label for="gender">여</label>
				</fieldset>
			</dd>
			
			<dd>
				<label for="hobby">취미</label>
				<select id="hobby" name="hobby" required>
					<option value="잠자기" selected>잠자기</option>
					<option value="무협지보기">무협지보기</option>
					<option value="애니메이션시청">애니메이션시청</option>
					<option value="건프라">건프라</option>
				</select>
			</dd>
			
			<dd>
				<input type="submit" value="전송" />
			</dd>
		</dl>
	</form>
</body>

</html>