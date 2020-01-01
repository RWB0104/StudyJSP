<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jQuery Ajax 메소드 - $.get()</title>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	
	<script>
		$(document).ready(function()
        {
	        $("#b1").click(function()
            {
	            // [결과] 버튼을 클릭하면 자동 실행
	            $.get("../../data/ch07/xhrTest3.txt", function(data, status)
                {
	                // data: xhrTest3.txt의 내용 + status: 처리상태 -> resultStr에 저장
	                var resultStr = "데이터: " + data + "\n처리상태: " + status;
	                
	                // resultStr 내용을 <div id="result">에 표시
	                $("#result").text(resultStr);
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