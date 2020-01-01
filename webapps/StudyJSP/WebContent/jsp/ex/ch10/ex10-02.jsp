<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>ex10-02.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>2. 쿠키를 생성하는 방법과 사용하는 방법을 기술하시오</h2>
	
	<ul>
		<li>쿠키 생성 : Cookie 클래스의 객체를 생성한 후 response 객체의 addCookie() 메소드를 사용해서 쿠키 저장</li>
		<li>쿠키 사용 : 웹 브라우저의 요청에 실려 온 쿠키를 request 객체의 getCookie() 메소드를 사용</li>
	</ul>
</body>

</html>