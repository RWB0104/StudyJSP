<%@page import="ch11.logon.LogonDataBean"%>
<%@page import="ch11.logon.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>modifyForm.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	<script src="../../js/ch11/modify.js"></script>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<%
		String id = (String)session.getAttribute("id");
		String passwd = request.getParameter("passwd");
		
		LogonDBBean manager = LogonDBBean.getInstance();
		
		// 아이디와 비밀번호에 해당하는 사용자의 정보를 얻어냄
		LogonDataBean m = manager.getMember(id, passwd);
		
		try
		{
	%>
	
	<div id="regForm" class="box">
		<ul>
			<li>
				<p class="center">회원 정보 수정</p>
			</li>
			
			<li>
				<label for="id">아이디</label>
				<input id="id" name="id" type="email" size="20" maxlength="50" value="<%=id%>" readonly disabled />
			</li>
			
			<li>
				<label for="passwd">비밀번호</label>
				<input id="passwd" name="passwd" type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16" />
			</li>
			
			<li>
				<label for="name">이름</label>
				<input id="name" name="name" type="text" size="20" maxlength="10" value="<%=m.getName()%>" />
			</li>
			
			<li>
				<label for="address">주소</label>
				<input id="address" name="address" type="text" size="30" maxlength="50" value="<%=m.getAddress()%>" />
			</li>
			
			<li>
				<label for="tel">전화번호</label>
				<input id="tel" name="tel" type="tel" size="20" maxlength="20" value="<%=m.getTel()%>" />
			</li>
			
			<li class="label2">
				<button id="modifyProcess">수정</button>
				<button id="cancle">취소</button>
			</li>
		</ul>
	</div>
	
	<%
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
	%>
</body>

</html>