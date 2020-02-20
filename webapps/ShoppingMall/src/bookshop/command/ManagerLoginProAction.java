package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.MngrDBBean;
import bookshop.process.CommandAction;

public class ManagerLoginProAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		// 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 넘어온 요청의 데이터를 얻어냄
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		// DB와 연동해서 사용자의 인증을 처리
		MngrDBBean dbPro = MngrDBBean.getInstance();
		
		int check = dbPro.userCheck(id, passwd);
		
		// 해당 뷰(응답 페이지)로 보낼 내용을 request 속성에 지정
		request.setAttribute("check", check);
		request.setAttribute("id", id);
		
		return "/jsp/mngr/logon/mLoginPro.jsp";
	}
}