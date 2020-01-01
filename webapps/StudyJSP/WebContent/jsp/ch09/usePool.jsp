<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>usePool.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<table>
		<tr class="label">
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>가입일자</td>
			<td>주소</td>
			<td>전화번호</td>
		</tr>
		
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try
			{
				Context initCtx = new InitialContext();
				Context envCtx = (Context)initCtx.lookup("java:comp/env");
				DataSource ds = (DataSource)envCtx.lookup("jdbc/jsptest");
				conn = ds.getConnection();
				
				String sql = "SELECT * FROM `member`";
				
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				while (rs.next())
				{
					String id = rs.getString("id");
					String passwd = rs.getString("passwd");
					String name = rs.getString("name");
					
					Timestamp register = rs.getTimestamp("reg_date");
					
					String address = rs.getString("address");
					String tel = rs.getString("tel");
		%>
		
		<tr class="label">
			<td><%=id%></td>
			<td><%=passwd%></td>
			<td><%=name%></td>
			<td><%=register.toString()%></td>
			<td><%=address%></td>
			<td><%=tel%></td>
		</tr>
		
		<%
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
	</table>	
</body>

</html>