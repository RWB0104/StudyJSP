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
	<script src="/ShoppingMall/js/member/modify.js"></script>
</head>

<body>
	<div id="regForm" class="box">
		<ul>
			<li>
				<p class="center">회원 정보 수정</p>
			</li>
			
			<li>
				<label for="id">아이디</label>
				<input type="email" id="id" name="id" size="20" maxlength="50" value="${id}" readonly disabled />
			</li>
			
			<li>
				<label for="passwd">비밀번호</label>
				<input type="password" id="passwd" name="passwd" size="20" placeholder="6 ~ 16자 숫자/문자" maxlength="16" />
				<small class="cau">반드시 입력하세요.</small>
			</li>
			
			<li>
				<label for="name">이름</label>
				<input type="text" id="name" name="name" size="20" maxlength="10" value="${m.getName()}" />
			</li>
			
			<li>
				<label for="address">주소</label>
				<input type="text" id="address" name="address" size="30" maxlength="50" value="${m.getAddress()}" />
			</li>
			
			<li>
				<label for="tel">전화번호</label>
				<input type="tel" id="tel" name="tel" size="20" maxlength="20" value="${m.getTel()}" />
			</li>
			
			<li class="label2">
				<button id="modifyProcess">수정</button>
				<button id="cancel">취소</button>
			</li>
		</ul>
	</div>
</body>

</html>