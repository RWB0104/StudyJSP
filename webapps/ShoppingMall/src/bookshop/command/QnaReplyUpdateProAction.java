package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.QnaDBBean;
import bookshop.bean.QnaDataBean;
import bookshop.process.CommandAction;

public class QnaReplyUpdateProAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		request.setCharacterEncoding("UTF-8");
		
		int qna_id = Integer.parseInt(request.getParameter("qna_id"));
		
		String qna_content = request.getParameter("qna_content");
		
		QnaDataBean qna = new QnaDataBean();
		qna.setQna_id(qna_id);
		qna.setQna_content(qna_content);
		
		QnaDBBean qnaProcess = QnaDBBean.getInstance();
		
		int check = qnaProcess.updateArticle(qna);
		
		request.setAttribute("check", check);
		
		return "/jsp/mngr/qnaProcess/qnaReplyUpdatePro.jsp";
	}
}