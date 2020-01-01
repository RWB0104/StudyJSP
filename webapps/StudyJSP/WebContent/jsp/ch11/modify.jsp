<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>modify.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	<script src="../../js/ch11/modify.js"></script>
</head>

<body>
	<div id="status">
		<ul>
			<li>
				<label for="passwd">비밀번호</label>
				<input id="passwd" name="passwd" type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16" />
			</li>
			
			<li class="label2">
				<button id="modify">정보수정</button>
				<button id="delete">탈퇴</button>
			</li>
		</ul>
	</div>
</body>

</html>