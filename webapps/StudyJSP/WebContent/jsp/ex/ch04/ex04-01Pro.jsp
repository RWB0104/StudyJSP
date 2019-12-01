<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>방명록</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>방명록</h2>
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String desc = request.getParameter("desc");
	%>
	
	<p>이름 : <%=name%></p>
	<p>내용 : <%=desc%></p>
</body>

</html>