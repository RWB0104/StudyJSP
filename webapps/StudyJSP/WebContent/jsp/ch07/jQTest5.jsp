<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jQuery Ajax 메소드 - load() 응답처리</title>
	
	<script src="../../js/lib/jquery-3.4.1.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(document).ready(function()
        {
	        // [결과] 버튼을 클릭하면 xhrTest3.txt가 <div id="result"> 엘리먼트에 로드
	        $("#b1").click(function()
	        {
	        	$("#result").load("../../data/ch07/xhrTest3.txt", function(response, stu, xhr)
	        	{
	        		// 서버 요청이 성공 시
					if(stu == "success")
					{
						// 메시지 상자 표시
						alert("로드 성공!");
					}
	        		
	        		// 서버 요청 실패 시
	        		if(stu == "error")
	        		{
	        			alert("에러: " + xhr.status + ": " + xhr.stu);	
	        		}
				});
	        });
        });
	</script>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
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