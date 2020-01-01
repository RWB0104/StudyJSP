<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jstlEx02.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h3>JSTL core 태그예제 - if, choose, when, otherwise</h3>
	
	<c:set var="country" value="${'Korea'}" />
	
	<c:if test="${country != null}">
		<p>국가명 : <c:out value="${country}" /></p>
	</c:if>
	
	<c:choose>
		<c:when test="${country == 'Korea'}">
			<p><c:out value="${country}" />의 겨울은 춥다.</p>
		</c:when>
		
		<c:when test="${country == 'Canada'}">
			<p><c:out value="${country}" />의 겨울은 너무 춥다.</p>
		</c:when>
		
		<c:otherwise>
			<p>그외의 나라들의 겨울은 알 수 없다.</p>
		</c:otherwise>
	</c:choose>
</body>

</html>