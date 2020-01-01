<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>sessionLogin.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		String id = "";
	
		try
		{
			id = (String)session.getAttribute("id");
			
			if (id == null || id.equals(""))
			{
	%>
				
	<form method="POST" action="sessionLoginPro.jsp">
		<table>
			<tr>
				<td class="label">
					<label for="id">아이디</label>
				</td>
				
				<td class="content">
					<input id="id" name="id" type="text" size="20" maxlength="50" placeholder="example@exam.con" autofocus required />
				</td>
			</tr>
			
			<tr>
				<td class="label">
					<label for="passwd">비밀번호</label>
				</td>
				
				<td class="content">
					<input id="passwd" name="passwd" type="password" size="20" maxlength="16" placeholder="6 ~ 16자 숫자/문자" required />
				</td>
			</tr>
			
			<tr>
				<td class="label2">
					<input type="submit" value="로그인" />
					<input type="reset" value="다시작성" />
				</td>
			</tr>
		</table>
	</form>
	
	<%	
			}
			
			else
			{
	%>
	
	<b><%=id%></b>님이 로그인 하셨습니다.
	
	<form method="POST" action="sessionLogout.jsp">
		<input type="submit" value="로그아웃" />
	</form>
	
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