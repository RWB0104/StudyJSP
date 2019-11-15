<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ex03-02Pro</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>ex03-02Pro</h2>
	
	<%
		// getParameter는 String을 반환하므로 String을 int로 변환
		int number = Integer.parseInt(request.getParameter("number"));
		String text = "";
	
		// 10 이상
		if (number >= 10)
		{
			text = "10보다 크거나 같은 값";
		}
		
		// 10 미만
		else
		{
			text = "10보다 작은 값";
		}
	%>
	
	<p><%=text %></p>
</body>

</html>