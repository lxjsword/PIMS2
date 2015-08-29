<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login and Registration for PIMS</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Login and Registration Form with HTML5 and CSS3" />
<meta name="keywords"
	content="html5, css3, form, switch, animation, :target, pseudo-class" />
<meta name="author" content="Codrops" />
<link rel="stylesheet" type="text/css" href="../css/demo.css" />
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/animate-custom.css" />
</head>
<body>
	<div class="container" align="center">
		<header>
		<h1>
			Welcome to PIMS, Please <span>Login!</span>
		</h1>
		</header>
		<section>
		<div id="container_demo">
			<div id="wrapper">
				<div id="login" class="animate form">
					<form action="registerAction" method="post" autocomplete="on">
						<h1>Sign up</h1>
						<p>
							<label for="usernamesignup" class="uname" data-icon="u">Your
								username</label> <input id="user.userName" name="user.userName" required
								type="text" placeholder="mysuperusername690" />
							<s:fielderror cssStyle="color: red">
								<s:param>user.userName</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="passwordsignup" class="youpasswd" data-icon="p">
								Your password </label> <input id="password" name="password" required
								type="password" placeholder="eg. X8df!90EO" />
							<s:fielderror cssStyle="color: red">
								<s:param>password</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="passwordsignup_confirm" class="youpasswd"
								data-icon="p"> Please confirm your password </label> <input
								id="user.password" name="user.password" required type="password"
								placeholsder="eg. X8df!90EO" />
							<s:fielderror cssStyle="color: red">
								<s:param>user.password</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="username" class="uname" data-icon="u"> Your
								true name </label> <br /> <input id="user.name" name="user.name"
								required="required" type="text"
								placeholder="your true name" />
							<s:fielderror cssStyle="color: red">
								<s:param>user.name</s:param>
							</s:fielderror>
						</p>
						<p>
							<label>Sex</label>&nbsp&nbsp
							<input type="radio"  name="user.sex" value="男" checked/>男
							&nbsp&nbsp&nbsp&nbsp
                            <input type="radio"  name="user.sex" value="女"/>女
                            <s:fielderror cssStyle="color: red">
								<s:param>user.sex</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="username" class="uname" data-icon="u"> Birth
								date </label> <br /> <input id="user.birth" name="user.birth"
								required="required" type="text"
								placeholder="YYYY-MM-DD" />
							<s:fielderror cssStyle="color: red">
								<s:param>user.birth</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="username" class="uname" data-icon="u"> Your
								nation </label> <br /> <input id="user.nation" name="user.nation"
								required="required" type="text"
								placeholder="your nation" />
							<s:fielderror cssStyle="color: red">
								<s:param>user.nation</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="username" class="uname"> Your
								eudcation </label> <br />
								<s:select name="user.edu" headerValue="----------请选择----------" headerKey="1"
                                              list="{'硕士','博士','教授','本科','专科','高中','初中','小学','其它'}">    
                                    </s:select>
							<s:fielderror cssStyle="color: red">
								<s:param>user.edu</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="username" class="uname"> Your
								work </label> <br />
								<s:select name="user.work" headerValue="----------请选择----------" headerKey="1"
                                              list="{'软件测试工程师','软件开发工程师','教师','学生','职员','经理','老板','公务员','其它'}">    
                                </s:select>
							<s:fielderror cssStyle="color: red">
								<s:param>user.work</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="username" class="uname" data-icon="u"> Your
								Phone </label> <br /> <input id="user.phone" name="user.phone"
								required="required" type="text"
								placeholder="your phone" />
							<s:fielderror cssStyle="color: red">
								<s:param>user.phone</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="username" class="uname" data-icon="u"> Your
								address </label> <br /> <input id="user.place" name="user.place"
								required="required" type="text"
								placeholder="your address" />
							<s:fielderror cssStyle="color: red">
								<s:param>user.place</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="username" class="uname" data-icon="u"> Your
								email </label> <br /> <input id="user.email" name="user.email"
								required="required" type="text"
								placeholder="your email" />
							<s:fielderror cssStyle="color: red">
								<s:param>user.email</s:param>
							</s:fielderror>
						</p>
						<p class="signin button">
							<input type="submit" value="Sign up" />
						</p>
						<p class="change_link">
							Already a member ? <a href="http://localhost:8080/PIMS2/login/login.jsp"> Go
								and log in </a>
						</p>
					</form>
				</div>

			</div>
		</div>
		</section>
	</div>
</body>
</html>