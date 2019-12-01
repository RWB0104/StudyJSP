package ch08.register;

import java.sql.Timestamp;

public class RegisterBean
{
	// ===== 프로퍼티 ===== //
	// 아이디
	private String id;
	
	// 비밀번호
	private String passwd;
	
	// 이름
	private String name;
	
	// 가입입
	private Timestamp reg_date;
	
	public String getId()
	{
		return id;
	}
	
	public void setId(String id)
	{
		this.id = id;
	}
	
	public String getPasswd()
	{
		return passwd;
	}
	
	public void setPasswd(String passwd)
	{
		this.passwd = passwd;
	}
	
	public String getName()
	{
		return name;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public Timestamp getReg_date()
	{
		return reg_date;
	}
	
	public void setReg_date(Timestamp reg_date)
	{
		this.reg_date = reg_date;
	}
}