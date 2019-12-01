<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jQuery 테스트 페이지</title>
	
	<script src="../../js/lib/jquery-3.4.1.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(document).ready(function()
        {
			$("button").click(function()
			{
				$("#displayArea").html("<img src='../../img/ch07/막내.jpg' border='0' width='200px' height='200px' />");
			});
        });
	</script>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
		
		div#displayArea {
			width: 200px;
			height: 200px;
			border: 5px double #6699FF;
		}
	</style>
</head>

<body>
	<div id="displayArea">이곳의 내용이 변경</div>
	<button>표시</button>
</body>

</html>