<%@page import="ch12.board.BoardDataBean"%>
<%@page import="ch12.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>updateForm.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	<script src="../../js/ch12/update.js"></script>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<%
		// 수정할 글의 번호와 수정할 글이 위치한 페이지 번호를 얻어냄
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		
		BoardDBBean dbPro = BoardDBBean.getInstance();
		
		// 주어진 글번호에 해당하는 수정할 글을 가져옴
		BoardDataBean article = dbPro.updateGetArticle(num);
	%>
	
	<%-- 수정할 글의 원래 저장 내용을 글수정폼에 표시 --%>
	<div id="editForm.jsp" class="box">
		<ul>
			<li>
				<p class="center">글수정</p>
			</li>
			
			<li>
				<label for="subject">제목</label>
				<input id="subject" name="subject" type="text" size="50" maxlength="50" value="<%=article.getSubject()%>" />
				<input type="hidden" id="num" value="<%=num%>" />
			</li>
			
			<li>
				<label for="content">내용</label>
				<textarea id="content" rows="13" cols="50"><%=article.getContent()%></textarea>
			</li>
			
			<li>
				<label for="passwd">비밀번호</label>
				<input id="passwd" name="passwd" type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16" />
			</li>
			
			<li class="label2">
				<button id="update" value="<%=pageNum%>">수정</button>
				<button id="cancle" value="<%=pageNum%>">취소</button>
			</li>
		</ul>
	</div>
</body>

</html>