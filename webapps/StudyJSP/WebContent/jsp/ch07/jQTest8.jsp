<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jQuery Ajax 메소드 - $.ajax()</title>
	
	<script src="../../js/lib/jquery-3.4.1.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(document).ready(function()
        {
			// [결과] 버튼을 클릭하면 자동 실행
	        $("#b1").click(function()
	        {
	        	// 요청 페이지에 전송할 데이터
	        	var query = {
	        		name: "kingdora",
	        		stus: "homebody"
	        	};
	        	
	        	// process.jsp 페이지에 요청 데이터를 보낸 후 결과를 반환받음
	        	$.ajax(
	        	{
	        		// 전송 방식
	        		type: "POST",
	        		
	        		// 요청 페이지
	        		url: "process.jsp",
	        		
	        		// 전송 데이터
	        		data: query,
	        		
	        		// 요청 페이지를 실행한 결과
	        		success: function(data)
	        		{
	        			// 요청 페이지를 실행한 결과
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