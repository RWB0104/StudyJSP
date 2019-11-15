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
	<h2>2. 웹 애플리케이션 처리를 위한 CGI 방식과 웹 애플리케이션 서버 방식에 대해 기술하시오.</h2>
	
	<ul>
		<li><b>CGI 방식</b> : 웹서버가 애플리케이션 프로그램을 직접 호출하는 구조. 이때 어플리케이션 프로그램의 처리 방식은 프로세스를 생성하여 처리. 하나의 요청에 대해 1개의 프로세스를 생성하여 처리. 하나의 요청에 대해 1개의 프로세스가 생성되어서 그 요청을 처리한 뒤 종료</li>
		<li><b>웹 애플리케이션 서버 방식</b> : 웹 서버가 직접 애플리케이션 프로그램을 처리하는 것이 아니라, 웹 애플리케이션 서버에게 처리를 넘겨주고 애플리케이션 서버가 애플리케이션 프로그램을 처리</li>
	</ul>
</body>

</html>