<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<c:if test="${empty sessionScope.id}">
		<meta http-equiv="Refresh" content="0; url=/ShoppingMall/mg/managerMain.do" />
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
	<script src="/ShoppingMall/js/mngr/qnaProcess/qnaWrite.js"></script>
</head>

<body>
	<input type="hidden" id="qna_writer" value="manager" />
	<input type="hidden" id="qna_id" value="${qna_id}" />
	<input type="hidden" id="book_id" value="${book_id}" />
	<input type="hidden" id="book_title" value="${book_title}" />
	<input type="hidden" id="qora" value="${qora}" />
	
	<div id="writeForm" class="box">
		<ul>
			<li>
				<p>[${book_title}]의 QnA</p>
				<p>QnA 내용: ${qna_content}</p>
			</li>
			
			<li>
				<label for="rContent">답변</label>
				<textarea id="rContent" rows="13" cols="50"></textarea>
			</li>
			
			<li class="label2">
				<button id="replyPro">답변하기</button>
				<button id="cancel">취소</button>
			</li>
		</ul>
	</div>
</body>

</html>