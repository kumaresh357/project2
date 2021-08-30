<%@ page import="com.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>
	<div>
		<h2 align="center">
			<b>Admin Dashboard</b>
		</h2>
		<br> <br>
		<div>
			<form method="post" action="password-change.jsp">
				<button type="submit">Change Password</button>
			</form>
			&ensp;
		</div>
		<div>
			<form method="post" action="allflights.jsp">
				<button type="submit">Show All Flights</button>
			</form>
			&ensp;
		</div>
		<div>
			<form method="post" action="login.jsp">
				<button type="submit">Logout</button>
			</form>
			&ensp;
		</div>
		
	</div>
</body>
</html>