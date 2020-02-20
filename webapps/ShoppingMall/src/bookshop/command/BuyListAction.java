package bookshop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.BuyDBBean;
import bookshop.bean.BuyDataBean;
import bookshop.process.CommandAction;

public class BuyListAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		request.setCharacterEncoding("UTF-8");
		
		String buyer = request.getParameter("buyer");
		
		List<BuyDataBean> buyLists = null;
		
		int count = 0;
		
		// 해당 buyer의 구매 목록의 수를 얻어냄
		BuyDBBean buyProcess = BuyDBBean.getInstance();
		
		count = buyProcess.getListCount(buyer);
		
		// 구매 목록이 있으면 수행
		if (count > 0)
		{
			// 해당 buyer의 구매 목록을 얻어냄
			buyLists = buyProcess.getBuyList(buyer);
			
			request.setAttribute("buyLists", buyLists);
		}
		
		request.setAttribute("count", count);
		request.setAttribute("type", 1);
		
		return "/jsp/buy/buyList.jsp";
	}
}