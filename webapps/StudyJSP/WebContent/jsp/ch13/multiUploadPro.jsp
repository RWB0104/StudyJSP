<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<%
	// 결과 문자열
	String result = "----------------------<br />";
	
	// 웹 애플리케이션상의 절대 경로 저장
	String realFolder = "";
	
	// 파일 업로드 폴더 지정
	String saveFolder = "/upload";
	
	// 인코딩 타입
	String encType = "UTF-8";
	
	// 업로드될 파일 크기 최대 5MB
	int maxSize = 5 * 1024 * 1024;
	
	// 현재 jsp 페이지의 웹 애플리케이션상의 절대 경로를 구함
	ServletContext context = getServletContext();
	realFolder = context.getRealPath(saveFolder);
	
	try
	{
		// 파일 업로드를 수행하는 MultipartRequest 객체 생성
		MultipartRequest upload = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	}
	
	catch (Exception e)
	{
		e.printStackTrace();
	}
%>