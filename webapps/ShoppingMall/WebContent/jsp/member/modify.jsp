<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<c:if test="${empty sessionScope.id}">
		<meta http-equiv="Refresh" content="0; url=/ShoppingMall/index.do" />
	</c:if>
	
	<title>ShoppingMall</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="/ShoppingMall/css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="/ShoppingMall/js/library/jquery-1.11.0.min.js"></script>
</head>

<body>
	<div id="mStatus">
		<form id="uForm" method="POST" action="/ShoppingMall/modifyForm.do">
			<ul>
				<li>
					<label for="passwd">비밀번호</label>
					<input type="password" id="passwd" name="passwd" size="20" placeholder="6 ~ 16자리 숫자/문자" maxlength="16" />
					
					<input type="hidden" id="id" name="id" value="${sessionScope.id}" />
					
					<input type="submit" id="modify" value="정보수정" />
				</li>
			</ul>
		</form>
		
		<form id="dForm" method="POST" action="/ShoppingMall/deletePro.do">
			<ul>
				<li>
					<label for="passwd">비밀번호</label>
					<input type="password" id="passwd" name="passwd" size="20" placeholder="6 ~ 16자리 숫자/문자" maxlength="16" />
					
					<input type="hidden" id="id" name="id" value="${sessionScope.id}" />
					
					<input type="submit" id="delete" value="탈퇴" />
					<small class="cau">[탈퇴] 버튼을 누르면 바로 탈퇴됨</small>
				</li>
			</ul>
		</form>
		
		<button id="shopMain" onclick="window.location.href = '/ShoppingMall/index.do'">메인으로</button>
	</div>
</body>

</html>