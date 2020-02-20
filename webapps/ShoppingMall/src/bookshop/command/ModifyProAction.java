package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.LogonDBBean;
import bookshop.bean.LogonDataBean;
import bookshop.process.CommandAction;

public class ModifyProAction implements CommandAction
{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		request.setCharacterEncoding("UTF-8");
		
		// 수정할 회원 정보
		LogonDataBean member = new LogonDataBean();
		member.setId(request.getParameter("id"));
		member.setPasswd(request.getParameter("passwd"));
		member.setName(request.getParameter("name"));
		member.setAddress(request.getParameter("address"));
		member.setTel(request.getParameter("tel"));
		
		// 수정할 회원 정보를 가지고 수정 처리 후 성공 여부 반환
		LogonDBBean manager = LogonDBBean.getInstance();
		
		int check = manager.updateMember(member);
		
		request.setAttribute("check", check);
		
		return "/jsp/member/modifyPro.jsp";
	}
}