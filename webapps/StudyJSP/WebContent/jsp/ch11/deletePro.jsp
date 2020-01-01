<%@page import="ch11.logon.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<%
	String id = (String)session.getAttribute("id");
	String passwd = request.getParameter("passwd");
	
	LogonDBBean manager = LogonDBBean.getInstance();
	
	// 회원 탈퇴 처리 메소드 수행 후 탈퇴 상황값 반환
	int check = manager.deleteMember(id, passwd);
	
	// 탈퇴 성공 시
	if (check == 1)
	{
		// 세션을 무효화
		session.invalidate();
	}
	
	out.println(check);
%>