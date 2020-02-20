package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.MngrDBBean;
import bookshop.process.CommandAction;

public class QnaFormAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		request.setCharacterEncoding("UTF-8");
		
		String book_kind = request.getParameter("book_kind");
		
		int book_id = Integer.parseInt(request.getParameter("book_id"));
		
		// book_id에 해당하는 book_title을 얻어냄
		MngrDBBean bookProcess = MngrDBBean.getInstance();
		
		String book_title = bookProcess.getBookTitle(book_id);
		
		request.setAttribute("book_kind", book_kind);
		request.setAttribute("book_id", book_id);
		request.setAttribute("book_title", book_title);
		request.setAttribute("qora", 1);
		request.setAttribute("type", 1);
		
		return "/jsp/qna/qnaForm.jsp";
	}
}