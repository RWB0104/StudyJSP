<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>useCookie.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		Cookie[] cookies = request.getCookies();
	
		if (cookies != null)
		{
			for (int i = 0; i < cookies.length; i++)
			{
				if (cookies[i].getName().equals("id"))
				{
					out.println("쿠키 이름 : " + cookies[i].getName());
					out.println(", 쿠키 값 : " + cookies[i].getValue());
				}
			}
		}
		
		else
		{
			out.println("test");
		}
	%>
</body>

</html>