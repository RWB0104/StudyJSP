<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>main_board.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
</head>

<body>
	<%
		String id = "";
	
		try
		{
			id = (String)session.getAttribute("id");
	%>
	
	<%
			if (id == null || id.equals(""))
			{
	%>
	
	<div id="display_board" class="box2">로그인하세요! 게시판은 회원만 볼 수 있습니다.</div>
	
	<%
			}
	
			else
			{
	%>
	
	<div id="display_board" class="box2">
		<jsp:include page="list.jsp" />
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