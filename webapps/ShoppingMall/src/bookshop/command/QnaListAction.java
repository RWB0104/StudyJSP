package bookshop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.QnaDBBean;
import bookshop.bean.QnaDataBean;
import bookshop.process.CommandAction;

public class QnaListAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		List<QnaDataBean> qnaList;
		
		// DB 연동 - 상품 QnA의 수를 얻어냄
		QnaDBBean qnaProcess = QnaDBBean.getInstance();
		
		int count = qnaProcess.getArticleCount();
		
		// 상품 QnA가 있으면 수행
		if (count > 0)
		{
			// 지정한 수만큼의 상품 QnA를 얻어냄
			qnaList = qnaProcess.getArticles(count);
			
			request.setAttribute("qnaList", qnaList);
		}
		
		request.setAttribute("count", count);
		request.setAttribute("type", 0);
		
		return "/jsp/mngr/qnaProcess/qnaList.jsp";
	}
}