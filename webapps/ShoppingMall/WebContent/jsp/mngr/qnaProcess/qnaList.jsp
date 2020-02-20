<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<script src="/ShoppingMall/js/qnaProcess/qnaList.js"></script>
</head>

<body>
	<div id="qnaHeader">
		<button id="bookMain">관리자 메인으로</button>
	</div>
	
	<c:if test="${count == 0}">
		<p>등록된 QnA가 없습니다.</p>
	</c:if>
	
	<c:if test="${count > 0}">
		<div id="qnaList">
			<c:forEach var="qna" items="${qnaList}">
				<ul>
					<c:if test="${qna.getQora() == 1}">
						<li>
							<p>[${qna.getBook_title()}] 상품에 대한 QnA</p>
							<p>${qna.getQna_writer()} <small class="date">(${qna.getReg_date()})</small></p>
							<p>${qna.getQna_content()}</p>
						</li>
					</c:if>
					
					<c:if test="${qna.getReply() == 0}">
						<p>
							<button id="reply" name="${qna.getQna_id()}" onclick="reply(this)">답변하기</button>
						</p>
					</c:if>
					
					<c:if test="${qna.getQora() == 2}">
						<li class="re">
							<p>${qna.getQna_content()}</p>
							
							<p>
								<c:if test="${qna.getQna_writer() == 'manager'}">관리자</c:if>
								
								<small class="date">(${qna.getReg_date()})</small>
							</p>
							
							<p>
								<button id="editReply" name="${qna.getQna_id()}" onclick="edit(this)">수정</button>
							</p>
						</li>
					</c:if>
				</ul>
				
				<hr />
			</c:forEach>
		</div>
	</c:if>
</body>

</html>