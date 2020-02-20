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
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<div id="cartDeletePro">
		<form id="cartDeletePro" method="POST" action="/ShoppingMall/cartList.do">
			<input type="hidden" name="buyer" value="${sessionScope.id}" />
			<input type="submit" value="장바구니로 되돌아가기" />
		</form>
	</div>
</body>

</html>