<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>elEx1.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<ul>
		<li>
			<p>표현식 = 값</p>
		</li>
		
		<li>
			<p>\${2 + 5} = ${2 + 5}</p>
		</li>
		
		<li>
			<p>\${4 / 5} = ${4 / 5}</p>
		</li>
		
		<li>
			<p>\${7 mod 5} = ${7 mod 5}</p>
		</li>
		
		<li>
			<p>\${2 &lt; 3} = ${2 < 3}</p>
		</li>
		
		<li>
			<p>\${3.1 le 3.2} = ${3.1 le 3.2}</p>
		</li>
		
		<li>
			<%-- ${(5 > 3) ? 5 : 3} 사용 시 3이 절대로 나올 수 없으므로 오류가 출력되어, 이를 방지함 --%>
			<p>\${(5 > 3) ? 5 : 3} = ${5}</p>
		</li>
	</ul>
</body>

</html>