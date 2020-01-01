package ch09.update;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import work.crypt.BCrypt;
import work.crypt.SHA256;

public class UpdateDBBean
{
	private static UpdateDBBean instance = new UpdateDBBean();
	
	public static UpdateDBBean getInstance()
	{
		return instance;
	}
	
	private UpdateDBBean()
	{
		// No
	}
	
	private Connection getConnection() throws Exception
	{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jsptest");
		
		return ds.getConnection();
	}
	
	// member 테이블의 내용을 얻어내며, cryptProcessList.jsp 페이지에서 사용
	public List<UpdateDateBean> getMembers() throws Exception
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<UpdateDateBean> memberList = null;
		
		int x = 0;
		
		try
		{
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT COUNT(*) FROM `member`");
			rs = pstmt.executeQuery();
			
			if (rs.next())
			{
				x = rs.getInt(1);
			}
			
			pstmt.close();
			rs.close();
			
			pstmt = conn.prepareStatement("SELECT id, passwd FROM `member`");
			rs = pstmt.executeQuery();
			
			if (rs.next())
			{
				memberList = new ArrayList<UpdateDateBean>(x);
				
				do
				{
					UpdateDateBean member = new UpdateDateBean();
					member.setId(rs.getString("id"));
					member.setPasswd(rs.getString("passwd"));
					memberList.add(member);
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
		
		return memberList;
	}
	
	// member 테이블의 비밀번호를 일괄적으로 암호화해서 저장하며, cryptProcess.jsp에서 사용
	public void updateMember()
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// SHA-256을 사용하는 SHA256 클래스의 객체를 얻어낸다.
		SHA256 sha = SHA256.getInsatnce();
		
		try
		{
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT id, passwd FROM `member`");
			rs = pstmt.executeQuery();
			
			while (rs.next())
			{
				String id = rs.getString("id");
				String orgPass = rs.getString("passwd");
				
				// SHA256 클래스의 getSha256() 메소드를 사용해 원래의 비밀번호를 SHA-256 방식으로 암호화
				String shaPass = sha.getSha256(orgPass.getBytes());
				
				// SHA-256 방식으로 암호화된 값을 다시 BCrypt 클래스의 hasepw() 메소드를 사용해서 bcrypt 방식으로 암호화
				// BCrypt.gensalt() 메소드는 salt 값을 난수를 사용해 생성
				String bcPass = BCrypt.hashpw(shaPass, BCrypt.gensalt());
				
				pstmt = conn.prepareStatement("UPDATE `member` SET passwd = ? WHERE id = ?");
				pstmt.setString(1, bcPass);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
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
	}
}