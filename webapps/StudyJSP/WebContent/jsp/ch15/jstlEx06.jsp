<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jstlEx06.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<fmt:requestEncoding value="UTF-8" />
	
	<h3>JSTL fmt 태그예제 - requestEncoding</h3>
	<p>파라메터 : <c:out value="${param.name}" /></p>
	
	<form action="jstlEx06.jsp" method="POST">
		<ul>
			<li>
				<label for="name">이름</label>
				<input type="text" id="name" name="name" />
				<input type="submit" value="확인" />
			</li>
		</ul>
	</form>
</body>

</html>