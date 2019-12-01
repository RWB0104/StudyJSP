<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ex04-03.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<form method="GET" action="#">
		<dl>
			<dd>
				<label for="val1">값1</label>
				<input id="var1" name="var1" type="text" placeholder="1" required />
			</dd>
			
			<dd>
				<label for="val2">값2</label>
				<input id="var2" name="var2" type="text" placeholder="2" required />
			</dd>
			
			<dd>
				<input type="submit" value="결과" />
			</dd>
		</dl>
	</form>
	
	<%
		int var1 = Integer.parseInt(request.getParameter("var1"));
		int var2 = Integer.parseInt(request.getParameter("var2"));
		
		if (var1 + var2 >= 5)
		{
			out.println("두 값의 합이 5이상");
		}
		
		else
		{
			out.println("두 값의 합이 5미만");
		}
	%>
</body>

</html>