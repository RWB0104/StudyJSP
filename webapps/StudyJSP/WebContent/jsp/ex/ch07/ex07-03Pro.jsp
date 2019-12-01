<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
	
	<%
		String str = null;
		String name = request.getParameter("name");
		
		if (name.equals("김개동"))
		{
			str = "관리자님 어서오세요";
		}
		
		else
		{
			str = "회원님 어서오세요";
		}
		
		out.println(str);
	%>