package bookshop.command;

import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpServletRequest;

import bookshop.bean.LogonDBBean;
import bookshop.process.CommandAction;

public class DeleteProAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		// 사용자가 입력한 id, passwd를 가지고 회원 정보 삭제 후 성공 여부 반환
		LogonDBBean manager = LogonDBBean.getInstance();
		
		int check = manager.deleteMember(id, passwd);
		
		request.setAttribute("check", check);
		
		return "/jsp/member/deletePro.jsp";
	}
}