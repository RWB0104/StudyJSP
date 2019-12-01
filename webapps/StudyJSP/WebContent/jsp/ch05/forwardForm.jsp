<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>forwardForm.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<%
		request.setAttribute("id", "kingdora@kings.com");
		request.setAttribute("name", "김개동");
	%>
	
	forwardForm.jsp 페이지입니다.<br />
	화면에 절대로 표시되지 않습니다.<br />
	
	<jsp:forward page="forwardTo.jsp" />
</body>

</html>