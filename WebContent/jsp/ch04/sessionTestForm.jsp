<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>sessionTestForm.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		// 세션이 설정되지 않은 경우
		if (session.getAttribute("id") == null)
		{
	%>
	
			<form method="POST" action="sessionTest.jsp">
				<div id="unauth">
					<dl>
						<dd>
							<label for="id">아이디</label>
							<input id="id" name="id" type="text" placeholder="kingdora" autofocus required />
						</dd>
						
						<dd>
							<label for="pass">비밀번호</label>
							<input id="pass" name="pass" type="password" placeholder="1234" required />
						</dd>
						
						<dd>
							<input type="submit" value="로그인" />
						</dd>
					</dl>
				</div>
			</form>
	
	<%
		}
	
		// 세션이 설정된 경우
		else
		{
	%>
	
			<form method="POST" action="logout.jsp">
				<div id="auth">
					<dl>
						<dd>
							<%=session.getAttribute("id")%>님 오셨구려..
						</dd>
						
						<dd>
							<input type="submit" value="로그아웃" />
						</dd>
					</dl>
				</div>
			</form>
	
	<% } %>
</body>

</html>