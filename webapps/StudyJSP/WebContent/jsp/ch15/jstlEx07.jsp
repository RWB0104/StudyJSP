<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jstlEx07.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%-- Browser Locale 영어 변경 코드 --%>
	<%--
		<fmt:setLocale value="en_US" scope="session"/>
	--%>

	<h3>JSTL fmt 태그예제 - bundle, message1</h3>
	
	<%-- <fmt:setLocale value="en" /> --%>
	<fmt:bundle basename="ch15.bundle.testBundle">
		<fmt:message key="name" />
		<fmt:message key="message" var="msg" />
		
		<p><c:out value="${msg}" /></p>
	</fmt:bundle>
</body>

</html>