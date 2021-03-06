package bookshop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.MngrDBBean;
import bookshop.bean.MngrDataBean;
import bookshop.bean.QnaDBBean;
import bookshop.bean.QnaDataBean;
import bookshop.process.CommandAction;

public class BookContentAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		List<QnaDataBean> qnaLists;
		
		String book_kind = request.getParameter("book_kind");
		
		int book_id = Integer.parseInt(request.getParameter("book_id"));
		
		// book_id에 해당하는 상품을 얻어냄
		MngrDBBean bookProcess = MngrDBBean.getInstance();
		MngrDataBean book = bookProcess.getBook(book_id);
		
		// book_id에 해당하는 상품의 QnA 수를 얻어냄
		QnaDBBean qnaProcess = QnaDBBean.getInstance();
		
		int count = qnaProcess.getArticleCount(book_id);
		
		// QnA가 있으면 수행
		if (count > 0)
		{
			// book_id에 해당하는 상품의 QnA를 얻어냄
			qnaLists = qnaProcess.getArticles(count, book_id);
			
			request.setAttribute("qnaLists", qnaLists);
		}
		
		request.setAttribute("book", book);
		request.setAttribute("book_id", book_id);
		request.setAttribute("book_kind", book_kind);
		request.setAttribute("count", count);
		request.setAttribute("type", 1);
		
		return "/jsp/shop/bookContent.jsp";
	}
}