<%@page import="ch10.logon.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>sessionLoginPro.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%request.setCharacterEncoding("UTF-8");%>
	
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		LogonDBBean logon = LogonDBBean.getInstance();
		
		int check = logon.userCheck(id, passwd);
		
		if (check == 1)
		{
			session.setAttribute("id", id);
			response.sendRedirect("sessionLogin.jsp");
		}
		
		else if (check == 0)
		{
	%>
	
	<script>
		alert("비밀번호가 맞지 않습니다.");
		history.go(-1);
	</script>
	
	<%
		}
		
		else
		{
	%>
	
	<script>
		alert("아이디가 맞지 않습니다.");
		history.go(-1);
	</script>
	
	<%
		}
	%>
</body>

</html>