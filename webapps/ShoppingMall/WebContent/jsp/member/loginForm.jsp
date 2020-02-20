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
	<script src="/ShoppingMall/js/member/login.js"></script>
</head>

<body>
	<c:if test="${empty sessionScope.id}">
		<div id="lStatus">
			<ul>
				<li>
					<label for="cid">아이디</label>
					<input type="email" id="cid" name="cid" size="20" maxlength="50" placeholder="example@exam.com" autofocus />
					
					<label for="cpasswd">비밀번호</label>
					<input type="password" id="cpasswd" name="cpasswd" size="20" maxlength="16" placeholder="6 ~ 16자리 숫자/문자" />
					
					<button id="uLogin">로그인</button>
					<button id="uRes">회원가입</button>
				</li>
			</ul>
		</div>
	</c:if>
	
	<c:if test="${!empty sessionScope.id}">
		<div id="lStatus">
			<ul>
				<li>
					${sessionScope.id}님이 로그인 하셨습니다.
					
					<div id="info">
						<table>
							<tr height="10">
								<td>
									<button id="uLogout">로그아웃</button>
								</td>
								
								<td>
									<button id="uUpdate">회원 정보 번경</button>
								</td>
								
								<td>
									<form id="cartForm" method="POST" action="/ShoppingMall/cartList.do">
										<input type="hidden" name="buyer" value="${sessionScope.id}" />
										<input type="submit" name="cart" value="장바구니" />
									</form>
								</td>
								
								<td>
									<form id="buyForm" method="POST" action="/ShoppingMall/buyList.do">
										<input type="hidden" name="buyer" value="${sessionScope.id}" />
										<input type="submit" name="buy" value="구매내역" />
									</form>
								</td>
							</tr>
						</table>
					</div>
				</li>
			</ul>
		</div>
	</c:if>
</body>

</html>