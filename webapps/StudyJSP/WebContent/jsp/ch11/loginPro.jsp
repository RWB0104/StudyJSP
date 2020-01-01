<%@page import="ch11.logon.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<%
	// 사용자가 입력한 아이디와 비밀번호
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	LogonDBBean manager = LogonDBBean.getInstance();
	
	// 사용자 인증 처리 메소드
	int check = manager.userCheck(id, passwd);
	
	// 사용자 인증에 성공 시 세션 속성을 설정
	if (check == 1)
	{
		session.setAttribute("id", id);
	}
	
	out.println(check);
%>