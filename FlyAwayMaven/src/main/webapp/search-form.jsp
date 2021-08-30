<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search-Form</title>
</head>
<body>
	<div>
		<h4>Book your tickets</h4>
		<br />
	</div>
	<form action="SearchServlet">
		<div>
			<label for="date">Date</label> <input type="date" id="date"
				name="date" placeholder="Travel Date..">
		</div>
		<div>
			<label for="source">Source</label> <select id="source" name="source">
				<option value="India">India</option>
				<option value="USA">USA</option>
				<option value="UK">UK</option>
			</select>
		</div>
		<div>
			<label for="destination">Destination</label> <select id="destination"
				name="destination">
				<option value="USA">USA</option>
				<option value="UK">UK</option>
				<option value="India">India</option>
			</select>
		</div>
		<div>
			<label for="persons">No of Passenger</label> <select id="persons"
				name="persons">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select>
		</div>
		<br>
		<button type="submit" value="Submit">Search Flights</button>
	</form>
</body>
</html>