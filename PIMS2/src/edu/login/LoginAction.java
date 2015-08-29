package edu.login;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import DBJavaBean.DB;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements ServletRequestAware
{
	private String userName;
	private String password;
	private ResultSet rs = null;
	private String message = ERROR;
	private HttpServletRequest request;
	

	public String getUserName()
	{
		return userName;
	}


	public void setUserName(String userName)
	{
		this.userName = userName;
	}


	public String getPassword()
	{
		return password;
	}


	public void setPassword(String password)
	{
		this.password = password;
	}


	@Override
	public void setServletRequest(HttpServletRequest hsr)
	{
		request = hsr;	
	}
	
	public String execute()
	{
		DB mydb = new DB();
		String add = mydb.addUserInfo(request, this.getUserName());
		if (add.equals("ok"))
			message = SUCCESS;
		return message;
	}


	@Override
	public void validate()
	{
		if (this.getUserName() == null || this.getUserName().length() == 0)
			addFieldError("userName", "«Î ‰»Îµ«¬º√˚◊÷");
		if(this.getPassword()==null||this.getPassword().length()==0)
            addFieldError("password","«Î ‰»Îµ«¬º√‹¬Î£°");
		else
		{
			DB mydb = new DB();
			int status = mydb.checkLogin(userName, password);
			if (status == 1)
				addFieldError("userName","¥À”√ªß…–Œ¥◊¢≤·£°");
			else if (status == 2)
				addFieldError("password","µ«¬º√‹¬Î¥ÌŒÛ£°");	
		}
	}

}
