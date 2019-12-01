<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ex03-03Pro</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<% request.setCharacterEncoding("UTF-8"); %>

	<h2>ex03-03Pro</h2>
	
	<%
		int number = Integer.parseInt(request.getParameter("number"));
		int num = Integer.parseInt(request.getParameter("num"));
		long multiply = 1;
		int count = 0;
		
		for (count = 0; count < num; count++)
		{
			multiply *= number;
		}
	%>
	
	결과 : <%=multiply %>
</body>

</html>