<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>elEx2.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<form action="elEx2.jsp" method="POST">
		<ul>
			<li>
				<label for="name">이름</label>
				<input type="text" id="name" name="name" value="${param['name']}" />
				<input type="submit" value="확인" />
			</li>
			
			<li>
				<p>이름은 : ${param.name} 입니다.</p>
			</li>
		</ul>
	</form>
</body>

</html>