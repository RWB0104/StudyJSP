<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ex07-01.jsp</title>
	
	<script src="../../../js/lib/jquery-3.4.1.min.js"></script>
	
	<script>
		$(document).ready(function()
        {
	        $("#submit").click(function()
            {
	           var id = $("#id").val();
	           var pwd = $("#pwd").val();
	           
	           $("#result").text("아이디: " + id + ", 비밀번호: " + pwd);
            });
        });
	</script>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
		
		#result {
			width: 200px;
			height: 200px;
			border: 5px double #6699FF;
		}
	</style>
</head>

<body>
	<p>아이디와 비밀번호 입력</p>
	
	<label for="id">아이디</label>
	<input type="text" id="id" placeholder="ID" /><br />
	
	<label for="pwd">비밀번호</label>
	<input type="password" id="pwd" placeholder="Password" />
	
	<input type="button" id="submit" value="확인" />
	
	<p>결과</p>
	
	<div id="result"></div>
</body>

</html>