<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>includedParamTest.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		String name = request.getParameter("name");
		String pageName = request.getParameter("pageName");
	%>
	
	파라미터 값을 전달받아 실행되는<br />
	포함되는 페이지 <%=pageName%> 입니다.<br />
	<b><%=name%></b> 님 오셨구려..
	<hr />
</body>

</html>