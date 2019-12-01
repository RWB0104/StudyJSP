<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title></title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link href="../../css/style.css" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%request.setCharacterEncoding("UTF-8");%>
	
	<jsp:useBean id="registerBean" class="ch08.register.RegisterBean">
		<jsp:setProperty name="registerBean" property="*" />
	</jsp:useBean>
	
	<%
		// 현재 날짜와 시간을 가입일로 지정
		registerBean.setReg_date(new Timestamp(System.currentTimeMillis()));
	%>
	
	<table class="content">
		<tr>
			<td>아이디</td>
			
			<td>
				<jsp:getProperty name="registerBean" property="id" />
			</td>
		</tr>
		
		<tr>
			<td>비밀번호</td>
			
			<td>
				<jsp:getProperty name="registerBean" property="passwd" />
			</td>
		</tr>
		
		<tr>
			<td>이름</td>
			
			<td>
				<jsp:getProperty name="registerBean" property="name" />
			</td>
		</tr>
		
		<tr>
			<td>가입일</td>
			
			<td>
				<jsp:getProperty name="registerBean" property="reg_date" />
			</td>
		</tr>
	</table>
</body>

</html>