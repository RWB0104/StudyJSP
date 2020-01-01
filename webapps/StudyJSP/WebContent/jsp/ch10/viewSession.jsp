<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>viewSession.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		Enumeration <String>attr = session.getAttributeNames();
		
		while (attr.hasMoreElements())
		{
			String attrName = attr.nextElement();
			String attrValue = (String)session.getAttribute(attrName);
			
			out.println("세션의 속성명은 " + attrName + "이고 ");
			out.println("세션의 속성값은 " + attrValue + "이다.<br />");
		}
	%>
</body>

</html>