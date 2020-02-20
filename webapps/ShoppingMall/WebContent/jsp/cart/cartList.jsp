<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="prefix" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<script src="/ShoppingMall/js/cart/cartList.js"></script>
</head>

<body>
	<div id="cata" class="box2">
		<ul>
			<li>
				<a href="/ShoppingMall/list.do?book_kind=100">문학</a>
			</li>
			
			<li>
				<a href="/ShoppingMall/list.do?book_kind=200">어학</a>
			</li>
			
			<li>
				<a href="/ShoppingMall/list.do?book_kind=300">컴퓨터</a>
			</li>
			
			<li>
				<a href="/ShoppingMall/list.do?book_kind=all">전체</a>
			</li>
		</ul>
	</div>
	
	<div id="goShop">
		<button id="conShopping">쇼핑계속</button>
		<button id="shopMain">메인으로</button>
	</div>
	
	<div id="cartList">
		<c:if test="${count == 0}">
			<ul>
				<li>장바구니에 담긴 물품이 없습니다.</li>
			</ul>
		</c:if>
		
		<c:if test="${count > 0}">
			<table>
				<tr>
					<td width="300">상품명</td>
					<td width="100">판매가격</td>
					<td width="150">수량</td>
					<td width="150">금액</td>
				</tr>
				
				<c:set var="total" value="0" />
				
				<c:forEach var="cart" items="${cartLists}">
					<tr>
						<td width="300">
							<img src="/ShoppingMall/images/bookImage/${cart.getBook_image()}" class="cartimage" />${cart.getBook_title()}
						</td>
						
						<td width="100">
							<fmt:formatNumber value="${cart.getBuy_price()}" type="number" pattern="#,##0" />원
						</td>
						
						<td width="150">
							<input type="text" name="buy_count" size="5" value="${cart.getBuy_count()}" />
							<button id="updateSu" name="${cart.getCart_id()},${cart.getBuy_count()}" onclick="editSu(this)">수정</button>
						</td>
						
						<td align="center" width="150">
							<c:set var="amount" value="${cart.getBuy_count() * cart.getBuy_price()}" />
							<c:set var="total" value="${total + amount}" />
							
							<fmt:formatNumber value="${amount}" type="number" pattern="#,##0" />원
							
							<button id="deleteList" name="${cart.getCart_id()}" onclick="delList(this)">삭제</button>
						</td>
					</tr>
				</c:forEach>
				
				<tr>
					<td colspan="4" align="right" class="b">
						총 금액: <fmt:formatNumber value="${total}" type="number" pattern="#,##0" />원
					</td>
				</tr>
				
				<tr height="10">
					<td colspan="5" align="center">
						<div id="cinfo">
							<table>
								<tr>
									<td>
										<form id="cartForm" method="POST" action="/ShoppingMall/buyForm.do">
											<input type="hidden" name="buyer" value="${sessionScope.id}" />
											<input type="submit" value="구매하기" />
										</form>
									</td>
									
									<td>
										<form id="cartClearForm" method="POST" action="/ShoppingMall/deleteCart.do">
											<input type="hidden" name="list" value="all" />
											<input type="hidden" name="buyer" value="${sessionScope.id}" />
											
											<input type="submit" value="장바구니 비우기" />
										</form>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
		</c:if>
	</div>
</body>

</html>