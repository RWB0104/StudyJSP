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
	<form method="POST" action="ex08-02.jsp">
		<dl>
			<dd>
				<label for="name">이름</label>
				<input id="name" name="name" type="text" size="20" placeholder="홍길동" maxlength="10" autofocus />
			</dd>
			
			<dd>
				<label for="email">이메일</label>
				<input id="email" name="email" type="email" size="30" placeholder="aaaa@aaa.com" maxlength="50" />
			</dd>
			
			<dd>
				<label for="comment">방문소감</label>
				<textarea id="comment" name="comment" rows="10" cols="50"></textarea>
			</dd>
			
			<dd>
				<label for="passwd">비밀번호</label>
				<input id="passwd" name="passwd" type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16" />
			</dd>
			
			<dd>
				<input type="submit" value="등록" />
				<input type="reset" value="다시 작성" />
			</dd>
		</dl>
	</form>
</body>

</html>