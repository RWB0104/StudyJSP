<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>loginForm.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	<script src="../../js/ch11/login.js"></script>
</head>

<body>
	<%
		String id = "";
		
		try
		{
			// id 세션 속성의 값을 얻어내서 id 변수에 저장
			// 인증된 사용자의 경우 id 세션 속성의 값 null 또는 공백이 아님
			id = (String)session.getAttribute("id");
			System.out.println(id);
	%>
	
	<%
			// 인증되지 않은 사용자 영역
			if (id == null || id.equals(""))
			{
	%>
	
	<div id="status">
		<ul>
			<li>
				<label for="id">아이디</label>
				<input id="id" name="id" type="email" size="20" maxlength="50" placeholder="example@exam.com" />
			</li>
			
			<li>
				<label for="passwd">비밀번호</label>
				<input id="passwd" name="passwd" type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16" />
			</li>
			
			<li class="label2">
				<button id="login">로그인</button>
				<button id="register">회원 가입</button>
			</li>
		</ul>
	</div>
	
	<%
			}
			
			else
			{
	%>
	
	<div id="status">
		<ul>
			<li>
				<b><%=id%></b>님이 로그인 하셨습니다.
			</li>
			
			<li class="label2">
				<button id="logout">로그아웃</button>
				<button id="update">회원 정보 변경</button>
			</li>
		</ul>
	</div>
	
	<%
			}
		}
			
		catch (Exception e)
		{
			e.printStackTrace();
		}
	%>
</body>

</html>