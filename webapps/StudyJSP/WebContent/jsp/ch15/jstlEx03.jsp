<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jstlEx03.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h3>Header 정보 : </h3>
	
	<c:forEach var="head" items="${headerValues}">
		<p>param : <c:out value="${head.key}" /></p>
		
		<p>
			value : 
			
			<c:forEach var="val" items="${head.value}">
				<c:out value="${val}" />
			</c:forEach>
		</p>
		
		<hr />
	</c:forEach>
</body>

</html>