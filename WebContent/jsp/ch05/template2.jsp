<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>template2.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../../css/ch05/template.css" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<% String contentPage = request.getParameter("CONTENTPAGE"); %>
	
	<header>
		<jsp:include page="top.jsp" flush="false" />
	</header>
	
	<div id="content">
		<section id="areaSub">
			<jsp:include page="left.jsp" flush="false" />
		</section>
		
		<section id="areaMain">
			<jsp:include page="<%=contentPage%>" flush="false" />
		</section>
	</div>
	
	<footer>
		<jsp:include page="bottom.jsp" flush="false" />
	</footer>
</body>

</html>