<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>setSession.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		String id = "psj1789@naver.com";
		String passwd = "123456";
		
		session.setAttribute("id", id);
		session.setAttribute("passwd", passwd);
		
		out.println("세션에 id와 passwd 속성을 설정했습니다.<br />");
	%>
	
	<form method="POST" action="viewSession.jsp">
		<table>
			<tr>
				<td>
					<input type="submit" value="세션 속성 확인" />
				</td>
			</tr>
		</table>

	</form>
</body>

</html>