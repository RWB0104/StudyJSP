<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jQuery Ajax 메소드 - $.post()</title>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	
	<script>
		$(document).ready(function()
        {
			// 결과 버튼을 클릭하면 자동 실행
	        $("#b1").click(function()
            {
	            // process.jsp를 post 방식으로 요청
	            $.post("process.jsp",
	            {
	            	// 요청 페이지에 실어서 보낼 데이터
	            	name: "kingdora",
	            	stus: "homebody"
	            }, function(data, status)
	            {
	                // 요청이 제대로 처리되었으면
	                if(status = "success")
	                {
	                	$("#result").html(data);
	                }
                });
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
	<button id="b1">결과</button>
	<div id="result"></div>
</body>

</html>