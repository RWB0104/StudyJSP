<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>sessionTest.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<%
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		if (id.equals("kingdora") && pass.equals("1234"))
		{
			session.setAttribute("id", id);
		}
		
		response.sendRedirect("sessionTestForm.jsp");
	%>
</body>

</html>