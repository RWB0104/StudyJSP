<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jQuery 이벤트처리</title>
	
	<script src="../../js/lib/jquery-3.4.1.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(document).ready(function()
        {
			// <p> 엘리먼트에 마우스 포인터를 위치시키면 자동 실행
	        $("p").mouseenter(function()
	        {
	        	$(this).text("왔구려, 마우스포인터!!!");
	        });
			
	     	// <p> 엘리먼트에 마우스 포인터가 나가면 자동 실행
	        $("p").mouseleave(function()
	        {
	        	$(this).text("돌아와 마우스포인터!!!");
	        });
	     
	     	// <p> 엘리먼트를 더블클릭하면 자동 실행
	        $("button").dblclick(function()
	        {
	        	$(this).css("background-color", "#CCCCCC");
	        });
        });
	</script>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>

<body>
	<p>마우스 포인터를 여기에!</p>
	<button>더블클릭하시구려.</button>
</body>

</html>