/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.27
 * Generated at: 2019-12-21 12:46:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp.ch12;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ch12.board.BoardDBBean;
import ch12.board.BoardDataBean;
import java.util.List;
import java.text.SimpleDateFormat;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("ch12.board.BoardDBBean");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("ch12.board.BoardDataBean");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\" />\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("\t\r\n");
      out.write("\t<title>list.jsp</title>\r\n");
      out.write("\t\r\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap\" rel=\"stylesheet\" />\r\n");
      out.write("\t<link href=\"../../css/style.css\" rel=\"stylesheet\" />\r\n");
      out.write("\t\r\n");
      out.write("\t<style type=\"text/css\">\r\n");
      out.write("\t\t* {\r\n");
      out.write("\t\t\tfont-family: \"Noto Sans KR\", \"Malgun Gothic\", sans-serif;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</style>\r\n");
      out.write("\t\r\n");
      out.write("\t<script src=\"../../js/lib/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("\t<script src=\"../../js/ch12/list.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t");

		request.setCharacterEncoding("UTF-8");
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t");

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
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"list_head\" class=\"box2\">\r\n");
      out.write("\t\t<h3 class=\"inline\">글목록(전체 글 : ");
      out.print(count);
      out.write(")</h3>\r\n");
      out.write("\t\t<button id=\"new\">글쓰기</button>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t");

		// 게시판에 글이 없는 경우
		if (count == 0)
		{
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"list_article\" class=\"box2\">\r\n");
      out.write("\t\t<ul>\r\n");
      out.write("\t\t\t<li>\r\n");
      out.write("\t\t\t\t<p>게시판에 저장된 글이 없습니다.</p>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t");

		}
		
		// 게시판에 글이 있는 경우
		else
		{
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"list_article\" class=\"box2\">\r\n");
      out.write("\t\r\n");
      out.write("\t");

			// 글목록을 반복 처리
			for (int i = 0; i < articleList.size(); i++)
			{
				BoardDataBean article = articleList.get(i);
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t<ul class=\"article\">\r\n");
      out.write("\t\t\t<li class=\"layout_f\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t");

				String writer = article.getWriter();
				
				out.println(writer.substring(0, 4) + "****");
	
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<li class=\"layout_f\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t");

				int wid = 0;
				
				if (article.getRe_level() > 0)
				{
					wid = 5 * (article.getRe_level());
	
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<img src=\"../../img/ch12/level.gif\" />\r\n");
      out.write("\t\t\t\t<img src=\"../../img/ch12/re.gif\" />\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t");

				}
			
				else
				{
	
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<img src=\"../../img/ch12/level.gif\" width=\"");
      out.print(wid);
      out.write("\" />\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t");

				}
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t");

				int num = article.getNum();
				int ref = article.getRef();
				int re_step = article.getRe_step();
				int re_level = article.getRe_level();
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t");
      out.print(article.getSubject());
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<p class=\"date\">");
      out.print(sdf.format(article.getReg_date()));
      out.write("</p>\r\n");
      out.write("\t\t\t\t<pre>");
      out.print(article.getContent());
      out.write("</pre><br />\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t");

				try
				{
					id = (String)session.getAttribute("id");
				}
			
				catch (Exception e)
				{
					e.printStackTrace();
				}
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t");

				if (id.equals(writer))
				{
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t<button id=\"edit\" name=\"");
      out.print(num + "," + pageNum);
      out.write("\" onclick=\"edit(this);\">수정</button>\r\n");
      out.write("\t\t\t\t<button id=\"delete\" name=\"");
      out.print(num + "," + pageNum);
      out.write("\" onclick=\"del(this);\">삭제</button>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t");

				}
			
				else
				{
	
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<button id=\"reply\" name=\"");
      out.print(num + "," + ref + "," + re_step + "," + re_level + "," + pageNum);
      out.write("\" onclick=\"reply(this);\">댓글쓰기</button>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t");

				}
	
      out.write("\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t\t\r\n");
      out.write("\t");

			}
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t");

		}
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t<div id=\"jump\" class=\"box3\">\r\n");
      out.write("\t\r\n");
      out.write("\t");

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
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t<button id=\"juP\" name=\"");
      out.print(startPage - pageBlock);
      out.write("\" onclick=\"p(this);\" class=\"w2\">이전</button>&nbsp;\r\n");
      out.write("\t\t\r\n");
      out.write("\t");

			}
			
			for (int i = startPage; i <= endPage; i++)
			{
				if (currentPage == i)
				{
	
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<button id=\"ju\" name=\"");
      out.print(i);
      out.write("\" onclick=\"p(this);\" class=\"w1\">");
      out.print(i);
      out.write("</button>\r\n");
      out.write("\t\t\r\n");
      out.write("\t");

				}
				
				else
				{
	
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<button id=\"ju\" name=\"");
      out.print(i);
      out.write("\" onclick=\"p(this);\" class=\"w1\">");
      out.print(i);
      out.write("</button>\r\n");
      out.write("\t\t\r\n");
      out.write("\t");

				}
			}
			
			if (endPage < pageCount)
			{
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t&nbsp;\r\n");
      out.write("\t\t<button id=\"juN\" name=\"");
      out.print(startPage + pageBlock);
      out.write("\" onclick=\"p(this);\" class=\"w2\">다음</button>\r\n");
      out.write("\t\t\r\n");
      out.write("\t");

			}
		}
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}