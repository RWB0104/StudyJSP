package bookshop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.BuyDBBean;
import bookshop.bean.BuyDataBean;
import bookshop.process.CommandAction;

public class OrderListAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		List<BuyDataBean> buyLists = null;
		
		int count = 0;
		
		// 전체 주문 목록의 수를 얻어냄
		BuyDBBean buyProcess = BuyDBBean.getInstance();
		
		count = buyProcess.getListCount();
		
		// 주문 목록이 있으면
		if (count > 0)
		{
			// 전체 주문 목록을 얻어냄
			buyLists = buyProcess.getBuyList();
			
			request.setAttribute("buyLists", buyLists);
		}
		
		request.setAttribute("count", count);
		request.setAttribute("type", 0);
		
		return "/jsp/mngr/orderedProduct/orderList.jsp";
	}
}