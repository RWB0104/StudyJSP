<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>updatePro.jsp</title>
	
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
		ResultSet rs = null;
		
		try
		{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest?serverTimezone=UTC";
			String dbId = "root";
			String dbPass = "root";
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			String sql = "SELECT id, passwd FROM `member` WHERE id = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next())
			{
				String rId = rs.getString("id");
				String rPasswd = rs.getString("passwd");
				
				if (id.equals(rId) && passwd.equals(rPasswd))
				{
					sql = "UPDATE `member` SET name = ?, address = ?, tel = ? WHERE id = ?";
					
					// prepareStatement 재사용을 위한 리소스 해제
					pstmt.close();
					
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, name);
					pstmt.setString(2, addr);
					pstmt.setString(3, tel);
					pstmt.setString(4, id);
					
					int cnt = pstmt.executeUpdate();
					
					out.println("member 테이블의 레코드 " + cnt + "개 행을 수정했습니다.");
				}
				
				else
				{
					out.println("패스워드가 틀렸습니다.");
				}
			}
			
			else
			{
				out.println("아이디가 틀렸습니다.");
			}
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		finally
		{
			if (rs != null)
			{
				try
				{
					rs.close();
				}
				
				catch (SQLException e)
				{
					System.out.println("ResultSet 리소스 해제 실패");
				}
			}
			
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