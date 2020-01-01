<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ex07-02.jsp</title>
	
	<script src="../../../js/lib/jquery-3.4.1.min.js"></script>
	
	<script>
		$(document).ready(function()
        {
	        $("#load").click(function()
            {
				$("#show").load("ex07-01.jsp");
            });
        });
	</script>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<input type="button" id="load" value="로드" />
	
	<div id="show"></div>
</body>

</html>