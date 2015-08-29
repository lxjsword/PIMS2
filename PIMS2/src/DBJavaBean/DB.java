package DBJavaBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import JavaBean.DayBean;
import JavaBean.FileBean;
import JavaBean.FriendBean;
import JavaBean.UserBean;

public class DB
{
	private String driverName = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/person?useUnicode=true&characterEncoding=gbk";
	private String user = "root";
	private String password = "lxj123";
	private Connection con = null;
	private Statement st = null;
	private ResultSet rs = null;

	public DB()
	{

	}

	public Statement getStatement()
	{
		try
		{
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, password);
			return con.createStatement();
		} catch (Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}

	public int checkLogin(String username, String password)
	{
		try
		{
			String sql = "select password from user where userName = '"
					+ username + "'";
			st = getStatement();
			rs = st.executeQuery(sql);
			if (!rs.next())
				return 1;
			else if (!password.equals(rs.getString("password")))
				return 2;
			else
				return 0;

		} catch (Exception e)
		{
			e.printStackTrace();
			return 3;
		}
	}
	
	public boolean checkUserExist(String userName)
	{
		try
		{
			String sql = "select password from user where userName = '"
					+ userName + "'";
			st = getStatement();
			rs = st.executeQuery(sql);
			if (rs.next())
				return true;
			else
				return false;
		} catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public String addUserInfo(HttpServletRequest request, String userName)
	{
		String sure = null;
		String login = myLogin(request, userName);
		String friends = myFriends(request, userName);
		String day = myDayTime(request, userName);
		String file = myFile(request, userName);
		if (login.equals("ok") && friends.equals("ok") 
				&& day.equals("ok") && file.equals("ok"))
			sure = "ok";
		return sure;
	}

	private String myFile(HttpServletRequest request, String userName)
	{
		try
		{
			ArrayList list = new ArrayList();
			HttpSession session = request.getSession();
			rs = selectFileAll(request, userName);
			while(rs.next())
			{
                FileBean mess=new FileBean();
                mess.setTitle(rs.getString("title"));
                mess.setName(rs.getString("name"));
                mess.setContentType(rs.getString("contentType"));
                mess.setSize(rs.getString("size"));
                list.add(mess);
            }
			session.setAttribute("filesInfo", list);
			return "ok";
		}catch(Exception e)
		{
            e.printStackTrace();
            return null;
        }
	}

	private ResultSet selectFileAll(HttpServletRequest request, String userName)
	{
		try
		{
			String sql = "select * from file where userName = '" + userName + "'";
			st = getStatement();
			return st.executeQuery(sql);
		}catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}

	private String myDayTime(HttpServletRequest request, String userName)
	{
		try
		{
			ArrayList list = new ArrayList();
			HttpSession session = request.getSession();
			rs = selectDayAll(request, userName);
			while(rs.next())
			{
                DayBean mess=new DayBean();
                mess.setDay(rs.getString("date"));
                mess.setThing(rs.getString("thing"));
                list.add(mess);
			}
			
			session.setAttribute("daysInfo", list);
			return "ok";
		}catch(Exception e)
		{
            e.printStackTrace();
            return null;
        }
	}

	private ResultSet selectDayAll(HttpServletRequest request, String userName)
	{
		try
		{
			String sql = "select * from date where userName = '" + userName + "'";
			st = getStatement();
			return st.executeQuery(sql);
		}catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}

	private String myFriends(HttpServletRequest request, String userName)
	{
		try
		{
			ArrayList list = new ArrayList();
			HttpSession session = request.getSession();
			rs = selectFriAll(request, userName);
			while(rs.next())
			{
				FriendBean mess=new FriendBean();
                mess.setName(rs.getString("name"));
                mess.setPhone(rs.getString("phone"));
                mess.setEmail(rs.getString("email"));
                mess.setWorkplace(rs.getString("workplace"));
                mess.setPlace(rs.getString("place")); 
                mess.setQQ(rs.getString("QQ"));
                list.add(mess);
			}
			session.setAttribute("friendsInfo", list);
			return "ok";
		}catch(Exception e)
		{
            e.printStackTrace();
            return null;
        }
	}

	private ResultSet selectFriAll(HttpServletRequest request, String userName)
	{
		
		try
		{
			String sql = "select * from friends where userName = '" + userName + "'";
			st = getStatement();
			return st.executeQuery(sql);
		}catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}

	private String myLogin(HttpServletRequest request, String userName)
	{
		try
		{
			ArrayList list = new ArrayList();
			HttpSession session = request.getSession();
			rs = selectUser(request, userName);
			while (rs.next())
			{
				UserBean userbean = new UserBean();
				userbean.setUserName(rs.getString("userName"));
				userbean.setPassword(rs.getString("password"));
				userbean.setName(rs.getString("name"));
				userbean.setSex(rs.getString("sex"));
				userbean.setBirth(rs.getString("birth"));
				userbean.setNation(rs.getString("nation"));
				userbean.setEdu(rs.getString("edu"));
				userbean.setWork(rs.getString("work"));
				userbean.setPhone(rs.getString("phone"));
				userbean.setPlace(rs.getString("place"));
				userbean.setEmail(rs.getString("email"));
	            list.add(userbean);
			}
			session.setAttribute("userInfo", list);
			return "ok";
		}catch(Exception e)
		{
            e.printStackTrace();
            return null;
        }
	}

	public ResultSet selectUser(HttpServletRequest request, String userName)
	{
		try
		{
			String sql = "select * from user where userName = '" + userName
					+ "'";
			st = getStatement();
			return st.executeQuery(sql);
		} catch (Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}

	public String insertUser(HttpServletRequest request, UserBean user)
	{
		try
		{
			String sure = null;
			if (checkUserExist(user.getUserName()))
				sure = "one";
			else
			{
				String sql = String.format("insert into user (userName, password, name, sex, birth, nation, "
						+ "edu, work, phone, place, email) values ('%s', '%s', '%s', '%s', '%s', '%s', '%s', "
						+ "'%s', '%s', '%s', '%s')", user.getUserName(), user.getPassword(), user.getName(), 
						user.getSex(), user.getBirth(), user.getNation(), user.getEdu(), user.getWork(), user.getPhone(), 
						user.getPlace(), user.getEmail());
				st = getStatement();
				int row = st.executeUpdate(sql);
				if (row == 1)
					sure = "ok";
			}
			return sure;	
		}catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
}
