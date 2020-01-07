<%@ taglib prefix="simple" uri="/WEB-INF/tlds/simpleTag.tld" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>simpleBodyTag.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h3>SimpleTag를 사용한 커스텀 태그 작성 - 내용있는 태그</h3>
	
	<simple:simpleBody>환영합니다. <b>RWB</b>님.</simple:simpleBody>
</body>

</html>