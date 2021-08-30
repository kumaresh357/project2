<%@page import="com.Login"%>
<%
com.Login.isLoggedIn = false;
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login-Page</title>
</head>
<body>
	<div>
		<h2 align="center">
			<b>Login</b>
		</h2>
	</div>
	<form action="Login" method="post">
		<div>
			<label for="inputEmail">Email address</label> <input type="email"
				name="emailEntered" id="inputEmail" aria-describedby="emailHelp"
				placeholder="Enter email"> <br>
			<small id="emailHelp">&nbsp;&nbsp;Email : admin@flyaway.com</small>
		</div>
		<div>
			<label for="inputPassword">Password</label> <input type="password"
				name="passwordEntered" id="inputPassword" placeholder="Password">
			<br>
			<small id="passwordHelp">&nbsp;&nbsp; Current Password
				:&nbsp;<%=com.Login.password%></small>
		</div>
		<button type="submit" value="Submit">Login</button>
	</form>
</body>
</html>