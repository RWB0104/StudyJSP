package ch12.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBBean
{
	private static BoardDBBean instance = new BoardDBBean();
	
	// .jsp 페이지에서 DB 연동빈인 BoardDBBean 클래스의 메소드에 접근 시 필요
	public static BoardDBBean getInstance()
	{
		return instance;
	}
	
	private BoardDBBean()
	{
		// No
	}
	
	// 커넥션 풀로부터 Connection 객체를 얻어냄: DB 연동빈의 쿼리문을 수행하는 메소드에서 사용
	private Connection getConnection() throws Exception
	{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jsptest");
		return ds.getConnection();
	}
	
	// board 테이블에서 글을 추가(inset문) ← writePro.jsp에서 사용
	public int insertArticle(BoardDataBean article)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int x = 0;
		
		// board 테이블에 들어갈 글번호
		int number = 0;
		
		String sql = "";
		
		// 제목글의 글번호
		int num = article.getNum();
		
		// 제목글의 그룹화 아이디
		int ref = article.getRef();
		
		// 그룹 내의 글의 순서
		int re_step = article.getRe_step();
		
		// 글제목의 들여쓰기
		int re_level = article.getRe_level();
		
		try
		{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("SELECT MAX(num) FROM `board`");
			
			rs = pstmt.executeQuery();
			
			// 기존에 레코드가 존재
			if (rs.next())
			{
				// 다음 글 번호는 가장 큰 글번호 + 1
				number = rs.getInt(1) + 1;
			}
			
			// 첫 번째 글
			else
			{
				number = 1;
			}
			
			// 댓글 - 제목글의 글번호 가짐
			if (num != 0)
			{
				sql = "UPDATE `board` SET re_step = re_step + 1 WHERE ref = ? AND re_step = ?";
				
				pstmt.close();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, re_step);
				pstmt.executeUpdate();
				
				re_step = re_step + 1;
				re_level = re_level + 1;
			}
			
			// 제목글 - 글번호 없음
			else
			{
				ref = number;
				re_step = 0;
				re_level = 0;
			}
			
			// 쿼리를 작성 : board 테이블에 새로운 레코드 추가
			sql = "INSERT INTO `board`(writer, subject, content, passwd, reg_date, ip, ref, re_step, re_level) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			pstmt.close();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getWriter());
			pstmt.setString(2, article.getSubject());
			pstmt.setString(3, article.getContent());
			pstmt.setString(4, article.getPasswd());
			pstmt.setTimestamp(5, article.getReg_date());
			pstmt.setString(6, article.getIp());
			pstmt.setInt(7, ref);
			pstmt.setInt(8, re_step);
			pstmt.setInt(9, re_level);
			pstmt.executeUpdate();
			
			// 레코드 추가 성공
			x = 1;
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
					e.printStackTrace();
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
					e.printStackTrace();
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
					e.printStackTrace();
				}
			}
		}
		
		return x;
	}
	
	// board 테이블에 저장된 전체글의 수를 얻어냄 ← list.jsp에서 사용
	public int getArticleCount()
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int x = 0;
		
		try
		{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("SELECT COUNT(*) FROM `board`");
			
			rs = pstmt.executeQuery();
			
			if (rs.next())
			{
				x = rs.getInt(1);
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
					e.printStackTrace();
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
					e.printStackTrace();
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
					e.printStackTrace();
				}
			}
		}
		
		return x;
	}
	
	// 글의 목록을 가져옴 ← list.jsp
	public List<BoardDataBean> getArticles(int start, int end)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// 글목록을 저장하는 객체
		List<BoardDataBean> articleList = null;
		
		try
		{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("SELECT * FROM `board` ORDER BY ref DESC, re_step ASC LIMIT ?, ?");
			pstmt.setInt(1, start - 1);
			pstmt.setInt(2, end);
			
			rs = pstmt.executeQuery();
			
			// ResultSet이 레코드를 가짐
			if (rs.next())
			{
				articleList = new ArrayList<BoardDataBean>(end);
				
				do
				{
					BoardDataBean article = new BoardDataBean();
					article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
					article.setSubject(rs.getString("subject"));
					article.setContent(rs.getString("content"));
					article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
					article.setIp(rs.getString("ip"));
					
					// List객체에 데이터 저장빈인 BoardDataBean 객체를 저장
					articleList.add(article);
				}
				while (rs.next());
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
					e.printStackTrace();
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
					e.printStackTrace();
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
					e.printStackTrace();
				}
			}
		}
		
		// List 객체의 레퍼런스를 리턴
		return articleList;
	}
	
	// 글수정 폼에서 사용할 글의 내용(1개의 글) ← updateForm.jsp에서 사용
	public BoardDataBean updateGetArticle(int num)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		BoardDataBean article = null;
		
		try
		{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("SELECT * FROM `board` WHERE num = ?");
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if (rs.next())
			{
				article = new BoardDataBean();
				article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
				article.setSubject(rs.getString("subject"));
				article.setContent(rs.getString("content"));
				article.setPasswd(rs.getString("passwd"));
				article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
				article.setIp(rs.getString("ip"));
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
					e.printStackTrace();
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
					e.printStackTrace();
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
					e.printStackTrace();
				}
			}
		}
		
		return article;
	}
	
	// 글수정 처리에서 사용 ← updatePro.jsp에서 사용
	public int updateArticle(BoardDataBean article)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int x = -1;
		
		try
		{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("SELECT passwd FROM `board` WHERE num = ?");
			pstmt.setInt(1, article.getNum());
			
			rs = pstmt.executeQuery();
			
			if (rs.next())
			{
				String dbpasswd = rs.getString("passwd");
				
				if (dbpasswd.equals(article.getPasswd()))
				{
					String sql = "UPDATE `board` SET subject = ?, content = ? WHERE num = ?";
					
					pstmt.close();
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, article.getSubject());
					pstmt.setString(2, article.getContent());
					pstmt.setInt(3, article.getNum());
					pstmt.executeUpdate();
					
					x = 1;
				}
				
				else
				{
					x = 0;
				}
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
					e.printStackTrace();
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
					e.printStackTrace();
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
					e.printStackTrace();
				}
			}
		}
		
		return x;
	}
	
	// 글삭제 처리 시 사용(delete문) ← deletePro.jsp에서 사용
	public int deleteArticle(int num, String passwd)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int x = -1;
		
		try
		{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("SELECT passwd FROM `board` WHERE num = ?");
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if (rs.next())
			{
				String dbpasswd = rs.getString("passwd");
				
				if (dbpasswd.equals(passwd))
				{
					pstmt.close();
					pstmt = conn.prepareStatement("DELETE FROM `board` WHERE num = ?");
					pstmt.setInt(1, num);
					pstmt.executeUpdate();
					
					// 글삭제 성공
					x = 1;
				}
				
				else
				{
					// 비밀번호 틀림
					x = 0;
				}
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
					e.printStackTrace();
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
					e.printStackTrace();
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
					e.printStackTrace();
				}
			}
		}
		
		return x;
	}
}