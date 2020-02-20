package bookshop.bean;

import java.sql.Timestamp;

public class LogonDataBean
{
	// 아이디
	private String id;
	
	// 비밀번호
	private String passwd;
	
	// 이름
	private String name;
	
	// 가입 날짜
	private Timestamp reg_date;
	
	// 주소
	private String address;
	
	// 전화번호
	private String tel;
	
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
	
	public String getAddress()
	{
		return address;
	}
	
	public void setAddress(String address)
	{
		this.address = address;
	}
	
	public String getTel()
	{
		return tel;
	}
	
	public void setTel(String tel)
	{
		this.tel = tel;
	}
}