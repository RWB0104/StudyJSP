<%@page import="ch09.update.UpdateDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>cryptProcess.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h3>암호화 전 내용</h3>
	<jsp:include page="cryptProcessList.jsp" flush="false" />
	
	<%
		UpdateDBBean dbPro = UpdateDBBean.getInstance();
		dbPro.updateMember();
	%>
	
	<h3>암호화가 적용된 후 내용</h3>
	<jsp:include page="cryptProcessList.jsp" flush="false" />
</body>

</html>