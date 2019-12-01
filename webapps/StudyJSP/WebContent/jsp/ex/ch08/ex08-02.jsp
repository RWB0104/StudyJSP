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
	</style>
</head>

<body>
	<%request.setCharacterEncoding("UTF-8");%>
	
	<jsp:useBean id="testBean" class="ex.ch08.ExTestBean">
		<jsp:setProperty name="testBean" property="*" />
	</jsp:useBean>
	
	이름 : <jsp:getProperty name="testBean" property="name" /><br />
	이메일 : <jsp:getProperty name="testBean" property="email" /><br />
	방문소감 : <jsp:getProperty name="testBean" property="comment" /><br />
</body>

</html>