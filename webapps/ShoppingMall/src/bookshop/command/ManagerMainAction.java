package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.process.CommandAction;

public class ManagerMainAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		// 관리자를 구분할 때 사용
		request.setAttribute("type", 0);
		
		return "/jsp/mngr/managerMain.jsp";
	}
}