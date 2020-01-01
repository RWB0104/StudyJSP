<%@page import="ch12.board.BoardDBBean"%>
<%@page import="ch12.board.BoardDataBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>list.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	<script src="../../js/ch12/list.js"></script>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<%
		String id = "";
	
		// 한 페이지에 표시할 글의 수
		int pageSize = 3;
		
		// 날짜 데이터 표시 형식 지정
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		
		// 화면에 표시할 페이지 번호
		String pageNum = request.getParameter("pageNum");
		
		// 페이지 번호가 없으면 1페이지의 내용이 화면에 표시
		if (pageNum == null)
		{
			pageNum = "1";
		}
		
		// 전체 글의 수
		int count = 0;
		
		// 숫자로 파싱
		int currentPage = Integer.parseInt(pageNum);
		
		// 글목록을 저장
		List<BoardDataBean> articleList = null;
		BoardDBBean dbPro = BoardDBBean.getInstance();
		
		// 전체 글 수 얻어냄
		count = dbPro.getArticleCount();
		
		if (count == (currentPage - 1) * pageSize)
		{
			currentPage -= 1;
		}
		
		// 현재 페이지에서의 시작글 번호
		int startRow = (currentPage - 1) * pageSize + 1;
		
		try
		{
			// 테이블에 저장된 글이 있으면, 테이블에서 글목록을 가져옴
			if (count > 0)
			{
				articleList = dbPro.getArticles(startRow, pageSize);
			}
			
			// 테이블에 저장된 글이 없으면, 전체 글 수 : 0
			if (articleList.isEmpty())
			{
				count = 0;
			}
		}
		
		catch (Exception e)
		{
			System.out.println("[list.jsp] : 데이터 없음");
		}
	%>
	
	<div id="list_head" class="box2">
		<h3 class="inline">글목록(전체 글 : <%=count%>)</h3>
		<button id="new">글쓰기</button>
	</div>
	
	<%
		// 게시판에 글이 없는 경우
		if (count == 0)
		{
	%>
	
	<div id="list_article" class="box2">
		<ul>
			<li>
				<p>게시판에 저장된 글이 없습니다.</p>
			</li>
		</ul>
	</div>
	
	<%
		}
		
		// 게시판에 글이 있는 경우
		else
		{
	%>
	
	<div id="list_article" class="box2">
	
	<%
			// 글목록을 반복 처리
			for (int i = 0; i < articleList.size(); i++)
			{
				BoardDataBean article = articleList.get(i);
	%>
	
		<ul class="article">
			<li class="layout_f">
			
	<%
				String writer = article.getWriter();
				
				out.println(writer.substring(0, 4) + "****");
	%>
			
			</li>
			
			<li class="layout_f">
				
	<%
				int wid = 0;
				
				if (article.getRe_level() > 0)
				{
					wid = 5 * (article.getRe_level());
	%>
				
				<img src="../../img/ch12/level.gif" />
				<img src="../../img/ch12/re.gif" />
				
	<%
				}
			
				else
				{
	%>
				
				<img src="../../img/ch12/level.gif" width="<%=wid%>" />
				
	<%
				}
	%>
	
	<%
				int num = article.getNum();
				int ref = article.getRef();
				int re_step = article.getRe_step();
				int re_level = article.getRe_level();
	%>
	
				<%=article.getSubject()%>
				
				<p class="date"><%=sdf.format(article.getReg_date())%></p>
				<pre><%=article.getContent()%></pre><br />
				
	<%
				try
				{
					id = (String)session.getAttribute("id");
				}
			
				catch (Exception e)
				{
					e.printStackTrace();
				}
	%>
	
	<%
				if (id.equals(writer))
				{
	%>
	
				<button id="edit" name="<%=num + "," + pageNum%>" onclick="edit(this);">수정</button>
				<button id="delete" name="<%=num + "," + pageNum%>" onclick="del(this);">삭제</button>
				
	<%
				}
			
				else
				{
	%>
				
				<button id="reply" name="<%=num + "," + ref + "," + re_step + "," + re_level + "," + pageNum%>" onclick="reply(this);">댓글쓰기</button>
				
	<%
				}
	%>
			</li>
		</ul>
		
	<%
			}
	%>
	
	</div>
	
	<%
		}
	%>
	
	<%-- 페이지 이동 처리 --%>
	<div id="jump" class="box3">
	
	<%
		if (count > 0)
		{
			int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			int startPage = 1;
			
			if (currentPage % pageSize != 0)
			{
				startPage = (int)(currentPage / pageSize) * pageSize + 1;
			}
			
			else
			{
				startPage = ((int)(currentPage / pageSize) - 1) * pageSize + 1;
			}
			
			// 페이지들의 블록 단위 지정
			int pageBlock = 3;
			int endPage = startPage + pageBlock - 1;
			
			if (endPage > pageCount)
			{
				endPage = pageCount;
			}
			
			if (startPage > pageBlock)
			{
	%>
	
		<button id="juP" name="<%=startPage - pageBlock%>" onclick="p(this);" class="w2">이전</button>&nbsp;
		
	<%
			}
			
			for (int i = startPage; i <= endPage; i++)
			{
				if (currentPage == i)
				{
	%>
		
		<button id="ju" name="<%=i%>" onclick="p(this);" class="w1"><%=i%></button>
		
	<%
				}
				
				else
				{
	%>
		
		<button id="ju" name="<%=i%>" onclick="p(this);" class="w1"><%=i%></button>
		
	<%
				}
			}
			
			if (endPage < pageCount)
			{
	%>
	
		&nbsp;
		<button id="juN" name="<%=startPage + pageBlock%>" onclick="p(this);" class="w2">다음</button>
		
	<%
			}
		}
	%>
	
	</div>
</body>

</html>