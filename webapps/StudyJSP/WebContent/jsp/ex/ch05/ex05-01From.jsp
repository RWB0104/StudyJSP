<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ex05-01From.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%request.setCharacterEncoding("UTF-8");%>
	
	<%
		String sports = "eSports";
		String name = "홍길동";
	%>
	
	<jsp:forward page="ex05-01To.jsp">
		<jsp:param name="name" value="<%=name%>" />
		<jsp:param name="sports" value="<%=sports%>" />
	</jsp:forward>
</body>

</html>