<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jstlEx08.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h3>JSTL fmt 태그예제 - formatNumber</h3>
	
	<p>number : <fmt:formatNumber value="12345.678" type="number" /></p>
	<p>currency : <fmt:formatNumber value="12345.678" type="currency" currencySymbol="\\" /></p>
	<p>percent : <fmt:formatNumber value="12345.678" type="percent" /></p>
	<p>pattern=".0" : <fmt:formatNumber value="12345.678" pattern=".000" /></p>
</body>

</html>