<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>if-else문 예제 - 좋아하는 색 선택</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%-- 폼으로부터 넘어온 데이터의 한글이 깨지지 않게 처리 --%>
	<% request.setCharacterEncoding("UTF-8"); %>

	<h2>if-else문 예제 - 좋아하는 색 선택</h2>

	<%-- 입력한 값을 얻어내서 처리 --%>
	<%
		// ifTestForm.jsp의 10, 14라인의 파라미터 변수 name과 color의 값을 얻어냄
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		
		// 지역 변수 초기화
		String selectColor = "";
		
		// if문을 사용해서 color 파라미터 변수로부터 얻어낸 값을 가지고 selectColor 변수에 넣을 값을 결정
		if (color.equals("blue"))
		{
			// 두 개의 문자열이 같은가를 비교
			selectColor = "파랑새";
		}
		
		else if (color.equals("green"))
		{
			selectColor = "초록색";
		}
		
		else if (color.equals("red"))
		{
			selectColor = "빨강색";
		}
		
		else
		{
			selectColor = "기타색";
		}
	%>

	<%-- 결과 출력 --%>
	<%=name %>님이 선택한 색은
	<%=selectColor %>입니다.
	<p>선택한 색:</p>
	<br />
	<img src="../../img/ch03/<%=color + ".jpg"%>" border="0" />
</body>

</html>