<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>1장 학습평가</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h2>4. 서블릿의 요청과 응답 방식에 대해 기술하시오.</h2>
	
	<ul>
		<li>클라이언트의 서비스 요청 → 객체 생성의 유무 체크 : only one</li>
		<li>Yes면 생성 안 함, No면 객체 생성(메모리에 올린다)</li>
		<li>Invoker 실행 → Thread를 하나 만들어줌 - 작업용 request당 1개씩</li>
		<li>Invoker에서 생성된 Thread에서 Service 메소드(response의 내용이 담김) 호출. Thread의 run 메소드와 유사, 클라이언트당 1개씩 생성</li>
		<li>결과를 클라이언트에게 보냄. 이때 결과를 MIME type으로 보내는데 웹 브라우저의 MIME type은 text/html</li>
	</ul>
</body>

</html>