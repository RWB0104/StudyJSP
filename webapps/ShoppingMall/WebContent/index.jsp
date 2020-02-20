<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ShoppingMall</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link rel="stylesheet" href="/ShoppingMall/css/style.css" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<div id="header">
		<div id="logo" class="box">
			<img id="logo" class="noborder" src="/ShoppingMall/images/main/mollalogo3.png" />
		</div>
		
		<div id="auth" class="box">
			<c:if test="${type == 0}">
				<jsp:include page="/jsp/mngr/logon/mLoginForm.jsp" />
			</c:if>
			
			<c:if test="${type == 1}">
				<jsp:include page="/jsp/member/loginForm.jsp" />
			</c:if>
		</div>
	</div>
	
	<div id="content" class="box2">
		<jsp:include page="${cont}" />
	</div>
</body>

</html>