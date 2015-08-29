package edu.login;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import DBJavaBean.DB;
import JavaBean.UserBean;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport implements
		ServletRequestAware
{
	private UserBean user;
	private String password;
	private String message=ERROR;

	private HttpServletRequest request;

	public UserBean getUser()
	{
		return user;
	}

	public void setUser(UserBean user)
	{
		this.user = user;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public HttpServletRequest getRequest()
	{
		return request;
	}

	public void setRequest(HttpServletRequest request)
	{
		this.request = request;
	}

	@Override
	public void setServletRequest(HttpServletRequest hsr)
	{
		this.request = hsr;
	}

	@Override
	public String execute() throws Exception
	{
		DB mydb = new DB();
		String mess = mydb.insertUser(request, user);
		if (mess.equals("ok"))
			message = SUCCESS;
		else if (mess.equals("one"))
			message = 	INPUT;
		return message;
	}

	@Override
	public void validate()
	{
		if (user.getUserName() == null || user.getUserName().length() == 0)
			addFieldError("user.userName", "登录名字不允许为空！");
		else
		{
			DB mydb = new DB();
			if (mydb.checkUserExist(user.getUserName()))
				addFieldError("user.userName", "此登录名已存在！");
		}
		if (password == null || password.length() == 0)
			addFieldError("password", "登录密码不允许为空！");
		if (user.getPassword() == null || user.getPassword().length() == 0)
			addFieldError("user.password", "登录密码不允许为空！");
		if (!user.getPassword().equals(password))
			addFieldError("user.password", "两次密码不一致！");
		if (user.getName() == null || user.getName().length() == 0)
			addFieldError("user.name", "用户姓名不允许为空！");
		if (user.getBirth() == null || user.getBirth().length() == 0)
			addFieldError("user.birth", "用户生日格式为'yyyy-mm-dd'!");
		else
		{
			if (user.getBirth().length() != 10)
				addFieldError("user.birth","用户生日格式为'yyyy-mm-dd'!");
			else
			{
				String an = user.getBirth().substring(4,5);
				String bn = user.getBirth().substring(7,8);
				if (!an.equals("-") || !bn.equals("-"))
					addFieldError("user.birth","用户生日格式为'yyyy-mm-dd'!");
			}
		}
		if (user.getNation() == null || user.getNation().length() == 0)
		{
			addFieldError("user.nation", "用户民族不允许为空!");
		}
		if (user.getEdu().equals("1"))
		{
			addFieldError("user.edu", "请选择用户学历!");
		}
		if (user.getWork().equals("1"))
		{
			addFieldError("user.work", "请选择用户工作!");
		}
		if (user.getPhone() == null || user.getPhone().length() == 0)
		{
			addFieldError("user.phone", "用户电话不允许为空!");
		}
		if (user.getPlace() == null || user.getPlace().length() == 0)
		{
			addFieldError("user.place", "用户地址不允许为空!");
		}
		if (user.getEmail() == null || user.getEmail().length() == 0)
		{
			addFieldError("user.semail", "用户email不允许为空!");
		}
	}

}
