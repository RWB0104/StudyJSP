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
	<script src="/ShoppingMall/js/mngr/managerMain.js"></script>
</head>

<body>
	<c:if test="${empty sessionScope.id}">
		<div id="mList">
			<p>로그인 하세요.</p>
		</div>
	</c:if>
	
	<c:if test="${!empty sessionScope.id}">
		<div id="mList">
			<ul>
				<li>상품관련 작업</li>
				
				<li>
					<button id="registProduct">상품등록</button>
				</li>
				
				<li>
					<button id="updateProduct">상품수정/삭제</button>
				</li>
			</ul>
			
			<ul>
				<li>구매된 상품관련 작업</li>
				
				<li>
					<button id="orderedProduct">전체구매목록 확인</button>
				</li>
			</ul>
			
			<ul>
				<li>상품 QnA 작업</li>
				
				<li>
					<button id="qna">상품 QnA 답변</button>
				</li>
			</ul>
		</div>
	</c:if>
</body>

</html>