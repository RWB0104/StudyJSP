package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.CartDBBean;
import bookshop.process.CommandAction;

public class DeleteCartAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		request.setCharacterEncoding("UTF-8");
		
		String list = request.getParameter("list");
		String msg = "";
		
		CartDBBean bookProcess = CartDBBean.getInstance();
		
		// list 값이 "all"이면 수행
		if (list.equals("all"))
		{
			// 해당 buyer의 장바구니 목록을 모두 삭제
			String buyer = request.getParameter("buyer");
			
			bookProcess.deleteAll(buyer);
			
			msg = "장바구니가 모두 비워졌습니다.";
		}
		
		// list 값이 "all" 이외(cart_id)의 값이면 수행
		else
		{
			// list 값(cart_id)에 해당하는 레코드 삭제
			bookProcess.deleteList(Integer.parseInt(list));
			
			msg = "지정한 항목이 삭제되었습니다.";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("type", 1);
		
		return "/jsp/cart/deleteCart.jsp";
	}
}