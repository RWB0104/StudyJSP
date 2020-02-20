package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.QnaDBBean;
import bookshop.bean.QnaDataBean;
import bookshop.process.CommandAction;

public class QnaReplyUpdateFormAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		request.setCharacterEncoding("UTF-8");
		
		int qna_id = Integer.parseInt(request.getParameter("qna_id"));
		
		// 주어진 qna_id에 해당하는 수정할 QnA 답변을 가져옴
		QnaDBBean qnaProcess = QnaDBBean.getInstance();
		QnaDataBean qna = qnaProcess.updateGetArticle(qna_id);
		
		request.setAttribute("qna", qna);
		request.setAttribute("qna_id", qna_id);
		request.setAttribute("type", 0);
		
		return "/jsp/mngr/qnaProcess/qnaReplyUpdateForm.jsp";
	}
}