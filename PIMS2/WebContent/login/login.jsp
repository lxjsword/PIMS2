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
					<form action="loginAction" method="post" autocomplete="on">
						<h1>Log in</h1>
						<p>
							<label for="username" class="uname" data-icon="u"> Your
								email or username </label> <br /> <input id="userName" name="userName"
								required="required" type="text"
								placeholder="myusername or mymail@mail.com" />
							<s:fielderror cssStyle="color: red">
								<s:param>userName</s:param>
							</s:fielderror>
						</p>
						<p>
							<label for="password" class="youpasswd" data-icon="p">
								Your password </label> <br /> <input id="password" name="password"
								required="required" type="password" placeholder="eg. X8df!90EO" />
							<s:fielderror cssStyle="color: red">
								<s:param>password</s:param>
							</s:fielderror>
						</p>
						<p class="login button">
							<input type="submit" value="Login" />
						</p>
						<p class="change_link">
							Not a member yet ? <a href="http://localhost:8080/PIMS2/login/register.jsp">Join
								us</a>
						</p>
					</form>
				</div>
			</div>
		</div>
		</section>
	</div>
</body>
</html>