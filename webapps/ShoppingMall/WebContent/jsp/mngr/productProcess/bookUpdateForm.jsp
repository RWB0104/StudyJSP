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
	<script src="/ShoppingMall/js/library/jquery.form.min.js"></script>
	<script src="/ShoppingMall/js/mngr/productProcess/bookUpdate.js"></script>
</head>

<body>
	<div id="header">
		<button id="bookMain">관리자 메인으로</button>
		<button id="bookList">목록으로</button>
	</div>
	
	<form action="/ShoppingMall/mg/bookUpdatePro.do" method="POST" id="upForm1" enctype="multipart/form-data">
		<div id="bookUpdateForm" class="box">
			<ul>
				<li>
					<label for="book_kind">분류선택</label>
					<select id="book_kind" name="book_kind">
						<option value="100"<c:if test="${book_kind == 100}">selected</c:if>>문학</option>
						<option value="200"<c:if test="${book_kind == 200}">selected</c:if>>외국어</option>
						<option value="300"<c:if test="${book_kind == 300}">selected</c:if>>컴퓨터</option>
					</select>
				</li>
				
				<li>
					<label for="book_title">제목</label>
					<input type="text" id="book_title" name="book_title" size="50" maxlength="50" value="${book.book_title}" />
					<input type="hidden" name="book_id" value="${book_id}" />
				</li>
				
				<li>
					<label for="book_price">가격</label>
					<input type="text" id="book_price" name="book_price" size="10" maxlength="9" value="${book.book_price}" />원
				</li>
				
				<li>
					<label for="book_count">수량</label>
					<input type="text" id="book_count" name="book_count" size="10" maxlength="5" value="${book.book_count}" />권
				</li>
				
				<li>
					<label for="author">저자</label>
					<input type="text" id="author" name="author" size="20" maxlength="30" value="${book.author}" />권
				</li>
				
				<li>
					<label for="publishing_com">출판사</label>
					<input type="text" id="publishing_com" name="publishing_com" size="20" maxlength="30" value="${book.publishing_com}" />
				</li>
				
				<li>
					<label for="publishing_date">출판일</label>
					<div id="publishing_date">
						<jsp:useBean id="nowTime" class="java.util.Date"></jsp:useBean>
						<fmt:formatDate var="nowTimeStr" pattern="yyyy-MM-dd" value="${nowTime}" />
						<fmt:parseNumber var="lastYear" type="number" value="${nowTimeStr.toString().substring(0, 4)}" />
						
						<select name="publishing_year">
							<c:forEach var="i" begin="2010" end="${lastYear}">
								<option value="${i}">${i}</option>
							</c:forEach>
						</select>년
						
						<select name="publishing_month">
							<c:forEach var="i" begin="1" end="12">
								<option value="${i}">${i}</option>
							</c:forEach>
						</select>월
						
						<select name="publishing_day">
							<c:forEach var="i" begin="1" end="31">
								<option value="${i}">${i}</option>
							</c:forEach>
						</select>일
					</div>
				</li>
				
				<li>
					<label for="book_image">책 이미지</label>
					<input type="file" id="book_image" name="book_image" />
				</li>
				
				<li>
					<label for="book_content">내용</label>
					<textarea id="book_content" name="book_content" rows="13" cols="50"></textarea>
				</li>
				
				<li>
					<label for="discount_rate">할인율</label>
					<input type="text" id="discount_rate" name="discount_rate" size="5" placeholder="10" maxlength="2" />
				</li>
				
				<li class="label2">
					<input type="submit" id="updateBook" value="책수정" />
				</li>
			</ul>
		</div>
	</form>
</body>

</html>