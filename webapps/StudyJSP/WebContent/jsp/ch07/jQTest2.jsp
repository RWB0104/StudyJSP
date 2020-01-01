<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jQuery 실렉터와 메소드를 사용한 엘리먼트의 내용변경</title>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	
	<script>
		$(document).ready(function()
        {
			// <button id="b1"> 엘리먼트를 클릭하면 자동 실행
	        $("#b1").click(function()
	        {
	        	// 두 번째 버튼의 레이블 변경
	        	$("#b2").text($("p").text());
	        });
			
			// <buttion id="b2"> 엘리먼트를 클릭하면 자동 실행
			$("#b2").click(function()
			{
				$("#display").html("<img src='../../img/ch07/myFace.jpg' border='0' />");
			});
        });
	</script>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>

<body>
	<p>이미지표시</p>
	<button id="b1">버튼레이블 변경</button>
	<div id="display"></div>
	<button id="b2">버튼</button>
</body>

</html>