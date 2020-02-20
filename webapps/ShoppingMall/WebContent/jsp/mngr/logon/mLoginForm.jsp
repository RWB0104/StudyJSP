<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ShoppingMall</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="/ShoppingMall/css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="/ShoppingMall/js/library/jquery-1.11.0.min.js"></script>
	<script src="/ShoppingMall/js/mngr/logon/mLogon.js"></script>
</head>

<body>
	<c:if test="${empty sessionScope.id}">
		<div id="status">
			<ul>
				<li>
					<label for="id">아이디</label>
					<input type="email" id="id" name="id" size="20" maxlength="50" placeholder="example@exam.com" />
				</li>
				
				<li>
					<label for="passwd">비밀번호</label>
					<input type="password" id="passwd" name="passwd" size="20" maxlength="16" placeholder="6 ~ 16자 숫자/문자" />
				</li>
				
				<li>
					<button id="logon">로그인</button>
				</li>
			</ul>
		</div>
	</c:if>
	
	<c:if test="${!empty sessionScope.id}">
		<div id="status">
			<ul>
				<li>관리자 로그인 성공!! 작업중...</li>
				<li>
					<button id="logout">로그아웃</button>
				</li>
			</ul>
		</div>
	</c:if>
</body>

</html>