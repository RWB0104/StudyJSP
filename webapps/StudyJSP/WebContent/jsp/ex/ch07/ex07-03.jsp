<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ex07-03.jsp</title>
	
	<script src="../../../js/lib/jquery-3.4.1.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(document).ready(function()
        {
	        $("#submit").click(function()
            {
	        	var query = {
	        		name: $("#name").val()
	        	}
	        	
				$.ajax(
				{
					type: "POST",
					url: "ex07-03Pro.jsp",
					data: query,
					success: function(data)
                    {
	                    $("#result").text(data);
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
			height: 150px;
			border: 5px double #6699FF;
		}
	</style>
</head>

<body>
	<label for="name">이름</label>
	<input type="text" id="name" placeholder="name" />
	
	<input type="button" id="submit" value="처리" />
	
	<div id="result"></div>
</body>

</html>