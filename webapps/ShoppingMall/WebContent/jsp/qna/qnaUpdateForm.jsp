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
	<script src="/ShoppingMall/js/qna/update.js"></script>
</head>

<body>
	<input type="hidden" id="qna_id" value="${qna_id}" />
	<input type="hidden" id="book_kind" value="${book_kind}" />
	<input type="hidden" id="book_id" value="${qna.getBook_id()}" />
	
	<div id="editForm" class="box">
		<ul>
			<li>
				<label for="content">내용</label>
				<textarea id="updateCont" rows="13" cols="50">${qna.getQna_content()}</textarea>
			</li>
			
			<li class="label2">
				<button id="update">수정</button>
				<button id="cancel">취소</button>
			</li>
		</ul>
	</div>
</body>

</html>