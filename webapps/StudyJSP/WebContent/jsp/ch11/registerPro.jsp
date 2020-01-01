<%@page import="ch11.logon.LogonDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>registerPro.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:useBean id="member" class="ch11.logon.LogonDataBean">
		<jsp:setProperty name="member" property="*" />
	</jsp:useBean>
	
	<%
		// 폼으로부터 넘어오지 않는 데이터인 가입 날짜를 직접 데이터 저장빈에 세팅
		member.setReg_date(new Timestamp(System.currentTimeMillis()));
	
		LogonDBBean manager = LogonDBBean.getInstance();
		
		// 사용자가 입력한 데이터 저장빈 객체를 가지고 회원 가입 처리 메소드 호출
		manager.insertMember(member);
	%>
</body>

</html>