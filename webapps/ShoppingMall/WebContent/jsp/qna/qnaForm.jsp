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
	<script src="/ShoppingMall/js/qna/write.js"></script>
</head>

<body>
	<input type="hidden" id="qna_writer" value="${sessionScope.id}" />
	<input type="hidden" id="book_kind" value="${book_kind}" />
	<input type="hidden" id="book_id" value="${book_id}" />
	<input type="hidden" id="book_title" value="${book_title}" />
	<input type="hidden" id="qora" value="${qora}" />
	
	<div id="writeForm" class="box">
		<ul>
			<li>[${book_title}]에 대한 QnA</li>
			
			<li>
				<label for="content">내용</label>
				<textarea id="qnaCont" rows="13" cols="50"></textarea>
			</li>
			
			<li class="label2">
				<button id="regist">등록</button>
				<button id="cancel">취소</button>
			</li>
		</ul>
	</div>
</body>

</html>