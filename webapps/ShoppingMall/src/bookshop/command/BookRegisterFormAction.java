package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.process.CommandAction;

public class BookRegisterFormAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		request.setAttribute("type", 0);
		
		return "/jsp/mngr/productProcess/bookRegisterForm.jsp";
	}
}