<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>makeCookie.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		Cookie cookie = new Cookie("id", "psj1789");
		cookie.setMaxAge(60 * 2);
		
		response.addCookie(cookie);
		
		out.println("쿠키가 생성되었습니다.");
	%>
	
	<form method="POST" action="useCookie.jsp">
		<table>
			<tr>
				<td>
					<input type="submit" value="생성된 쿠키 확인" />
				</td>
			</tr>
		</table>
	</form>
</body>

</html>