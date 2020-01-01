<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jstlEx01.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h3>JSTL core 태그 예제</h3>
	
	<p>
		browser 변수값 설정
		<c:set var="browser" value="${header['User-Agent']}" /><br />
		<c:out value="${browser}" />
	</p>
	
	<p>
		browser 변수값 제거 후
		<c:remove var="browser" />
		<c:out value="${browser}" />
	</p>
</body>

</html>