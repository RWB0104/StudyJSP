<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>forwardTo.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		String id = (String)request.getAttribute("id");
		String name = (String)request.getAttribute("name");
	%>
	
	forwardTo.jsp 페이지입니다.<br />
	아이디 : <b><%=id%></b><br />
	패스워드 : <b><%=name%></b>
</body>

</html>