<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>JDBC 드라이버 테스트</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		Connection conn = null;
	
		try
		{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest?serverTimezone=UTC";
			String dbId = "root";
			String dbPass = "root";
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			out.println("제대로 연결되었습니다.");
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
	%>
</body>

</html>