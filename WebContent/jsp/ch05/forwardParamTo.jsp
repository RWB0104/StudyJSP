<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>forwardParamTo.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<h2>포워딩하는 페이지 : forwardParamTo.jsp</h2>
	
	<%
		String name = request.getParameter("name");
		String selectedColor = request.getParameter("color");
		String selectedPage = selectedColor + ".jsp";
	%>
	
	<jsp:forward page="<%=selectedPage%>">
		<jsp:param value="<%=selectedColor%>" name="selectedColor" />
		<jsp:param value="<%=name%>" name="name" />
	</jsp:forward>
</body>

</html>