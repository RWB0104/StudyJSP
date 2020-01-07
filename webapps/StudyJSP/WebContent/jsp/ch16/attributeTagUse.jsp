<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="tagFile" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>attributeTagUse.jsp</title>
	
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

	<h3>태그 파일을 사용한 커스텀 태그 작성 예제 - 속성이 있는 태그</h3>
	
	<c:set var="welcome" value="환영합니다." />
	
	<form method="POST" action="#">
		<input type="text" name="name" />
		<input type="submit" value="Submit" />
	</form>
	
	<c:if test="${fn:length(param.name) > 0}">
		<tagFile:attribute name="${param.name}" welcome="${welcome}" />
	</c:if>
</body>

</html>