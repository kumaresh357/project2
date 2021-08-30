<%@page import="com.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password-Change</title>
</head>
<body>
	<div>
		<h1>Password Change</h1>
		<%
		if (Login.isLoggedIn) {
		%>
		<form action="ChangePassword" method="post">
			<div>
				<label class="sr-only">Email address : admin@flyaway.com</label>
			</div>
			<div>
				<label for="inputPassword">New Password</label> <input type="password" name="passwordEntered" id="inputPassword" placeholder="Enter a new password"> <br>
				<small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp; Current Password :&nbsp;<%=Login.password%></small>
			</div>
			<button type="submit">Change Password</button>
		</form>
		<%
		} else {
		out.print("You must Login first");
		}
		%>
	</div>
</body>
</html>