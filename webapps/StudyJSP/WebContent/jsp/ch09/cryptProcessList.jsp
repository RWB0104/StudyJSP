<%@page import="ch09.update.UpdateDBBean"%>
<%@page import="ch09.update.UpdateDateBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>cryptProcessList.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		List<UpdateDateBean> memberList = null;
		UpdateDBBean dbPro = UpdateDBBean.getInstance();
		memberList = dbPro.getMembers();
	%>
	
	<table>
		<tr class="label">
			<td>아이디</td>
			<td>비밀번호</td>
		</tr>

		<%
			for (int i = 0; i < memberList.size(); i++)
			{
				UpdateDateBean member = (UpdateDateBean)memberList.get(i);
				
				String id = member.getId();
				String passwd = member.getPasswd();
		%>
		
		<tr>
			<td><%=id%></td>
			<td><%=passwd%></td>
		</tr>
				
		<%
			}
		%>
	
	</table>
</body>

</html>