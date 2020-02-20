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
	<script src="/ShoppingMall/js/orderedProduct/orderList.js"></script>
</head>

<body>
	<div id="listHeader">
		<p>주문목록 (전체 주문: ${count})</p>
		<button id="bookMain">관리자 메인으로</button>
	</div>
	
	<div id="orders">
		<c:if test="${count == 0}">
			<ul>
				<li>주문 목록이 없습니다.</li>
			</ul>
		</c:if>
		
		<c:if test="${count > 0}">
			<table>
				<tr class="title">
					<td>주문번호</td>
					<td>주문자</td>
					<td>상품명</td>
					<td>가격</td>
					<td>주문수량</td>
					<td>금액</td>
					<td>주문일</td>
					<td>결제계좌</td>
					<td>배송명</td>
					<td>배송지전화</td>
					<td>배송지주소</td>
					<td>배송지상황</td>
				</tr>
				
				<c:set var="total" value="0" />
				
				<c:forEach var="i" begin="0" end="${buyLists.size() - 1}">
					<c:set var="buyList" value="${buyLists.get(i)}" />
					<c:set var="pid" value="${buyLists.getBuy_id()}" />
					
					<c:if test="${i + 1 <= buyLists.size() - 1}">
						<c:set var="nid" value="${buyLists.get(i + 1).getBuy_id()}" />
					</c:if>
					
					<tr>
						<td>${buyLists.getBuy_id()}</td>
						
						<td>${buyLists.getBuyer()}</td>
						
						<td>${buyLists.getBook_title()}</td>
						
						<td>
							<fmt:formatDate value="${buyLists.getBuy_price()}" type="number" pattern="#,##0" />원
						</td>
						
						<td>${buyLists.getBuy_count()}</td>
						
						<td>
							<c:set var="amount" value="${buyLists.getBuy_count() * buyLists.getBuy_price()}" />
							<c:set var="total" value="${total + amount}" />
							
							<fmt:formatDate value="${amount}" type="number" pattern="#,##0" />원
						</td>
						
						<td>${buyLists.getBuy_date().toString()}</td>
						<td>${buyLists.getAccount()}</td>
						<td>${buyLists.getDeliveryName()}</td>
						<td>${buyLists.getDeliveryTel()}</td>
						<td>${buyLists.getDeliveryAddress()}</td>
						<td>${buyLists.getSanction()}</td>
					</tr>
					
					<c:if test="${pid != nid}">
						<tr>
							<td colspan="12" class="b">
								주문금액: <fmt:formatDate value="${total}" type="number" pattern="#,##0" />원
							</td>
						</tr>
						
						<c:set var="total" value="0" />
						<c:set var="pid" value="${nid}" />
					</c:if>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>

</html>