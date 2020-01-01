<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>main.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
</head>

<body>
	<div id="main_user_cert" class="box2">
		<div id="main_image" class="box">
			<img class="noborder" id="logo" src="../../img/ch12/mollahalf.png" />
		</div>
			
		<div id="main_auth" class="box">
			<jsp:include page="loginForm.jsp" />
		</div>
	</div>
	
	<div id="main_board" class="box2">
		<jsp:include page="main_board.jsp" />
	</div>
</body>

</html>