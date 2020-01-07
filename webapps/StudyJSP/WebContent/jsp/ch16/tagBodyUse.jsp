<%@ taglib prefix="tagFile" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>tagBodyUse.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h3>태그 파일을 사용한 커스텀 태그 작성 예제 - 내용 있는 태그</h3>
	
	<b><tagFile:tagBody>커스텀 태그에서 내용처리</tagFile:tagBody></b>
</body>

</html>