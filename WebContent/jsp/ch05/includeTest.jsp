<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>includeTest.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<% String pageName = request.getParameter("pageName"); %>
	
	포함하는 페이지 includeTest.jsp 입니다.<br />
	<hr />
	
	<jsp:include page="<%=pageName%>" flush="false" />
	
	includeTest.jsp의 나머지 내용입니다.
</body>

</html>