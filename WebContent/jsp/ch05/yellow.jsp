<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title></title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
		
		img {
			border: 0px;
			width: 70px;
			height: 30px;
		}
	</style>
</head>

<body>
	<%
		String name = request.getParameter("name");
		String selectedColor = request.getParameter("selectedColor");
	%>
	
	<h2>포워딩되는 페이지 - <%=selectedColor + ".jsp"%></h2>
	
	<b><%=name%></b>님의 좋아하는 색은 "<%=selectedColor%>"이고 빛의 밝음과 따뜻함을 상징하는 색입니다.<br />
	
	<img src="../../img/ch05/<%=selectedColor + ".jpg"%>" />
</body>

</html>