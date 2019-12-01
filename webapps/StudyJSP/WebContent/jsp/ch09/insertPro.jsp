<%@page import="java.sql.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>insertPro.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%request.setCharacterEncoding("UTF-8");%>
	
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		
		Timestamp register = new Timestamp(System.currentTimeMillis());
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String str = "";
		
		try
		{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest?serverTimezone=UTC";
			String dbId = "rwb";
			String dbPass = "rwb";
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			String sql = "INSERT INTO `member` VALUES (?, ?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			pstmt.setString(3, name);
			pstmt.setTimestamp(4, register);
			pstmt.setString(5, addr);
			pstmt.setString(6, tel);
			pstmt.executeUpdate();
			
			out.println("member 테이블에 새로운 레코드를 추가했습니다.");
		}
		
		// 예외 발생 시 처리
		catch (Exception e)
		{
			e.printStackTrace();
			out.println("member 테이블에 새로운 레코드를 추가에 실패했습니다.");
		}
		
		// 리소스 해제
		finally
		{
			if (pstmt != null)
			{
				try
				{
					pstmt.close();
				}
				
				catch (SQLException e)
				{
					System.out.println("PreparedStatement 리소스 해제 실패");
				}
			}
			
			if (conn != null)
			{
				try
				{
					conn.close();
				}
				
				catch (SQLException e)
				{
					System.out.println("Connection 리소스 해제 실패");
				}
			}
		}
	%>
</body>

</html>