<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
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
		MultipartRequest upload = null;
		
		// 파일 업로드를 수행하는 MultipartRequest 객체 생성
		upload = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		
		// <input type="file" />이 아닌 모든 파라미터를 얻어냄
		Enumeration<?> params = upload.getParameterNames();
		
		// 파일 아닌 파라미터들의 값을 반복해서 얻어냄
		while (params.hasMoreElements())
		{
			// 파라미터명
			String name = (String)params.nextElement();
			
			// 파라미터 값
			String value = upload.getParameter(name);
			
			// 결과 문자열 누적
			result += name + " : " + value + "<br />";
		}
		
		// <input type="file" />인 모든 파라미터를 얻어냄
		Enumeration<?> files = upload.getFileNames();
		
		// 업로드된 모든 파일의 정보를 반복해서 얻어냄
		while (files.hasMoreElements())
		{
			// 파라미터명
			String name = (String) files.nextElement();
			
			// 서버에 업로드된 파일명
			String filename = upload.getFilesystemName(name);
			
			// 원래 파일명
			String original = upload.getOriginalFileName(name);
			
			// 업로드된 파일의 타입 - 파일 종류
			String type = upload.getContentType(name);
			
			// 결과 문자열 누적
			result += "파라미터 이름 : " + name + "<br />";
			result += "실제 파일 이름 : " + original + "<br />";
			result += "저장된 파일 이름 : " + filename + "<br />";
			result += "파일 타입 : " + type + "<br />";
			
			// 업로드된 파일의 정보를 얻어내기 위해 File 객체로 생성
			File file = upload.getFile(name);
			
			if (file != null)
			{
				// 파일 크기
				result += "크기 : " + file.length() + " bytes<br />";
			}
		}
		
		result += "----------------------<br />";
		
		out.println(result);
	}
	
	catch (Exception e)
	{
		e.printStackTrace();
	}
%>