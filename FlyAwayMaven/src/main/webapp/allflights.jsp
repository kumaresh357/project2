<%@page import="com.Airlinesdao"%>
<%@page import="com.Flights"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Flights</title>
</head>
<body>
	<%
	List<Flights> flights = Airlinesdao.allFlights();
	request.setAttribute("flightlist", flights);
	%>
	<table>
		<tr>
			<th>id</th>
			<th>source</th>
			<th>destination</th>
			<th>airline</th>
			<th>price</th>
		</tr>
		<core:forEach items="${flights}" var="emp">
			<tr>
				<td>${emp.getFlightId()}</td>
				<td>${emp.getSource()}</td>
				<td>${emp.getDestination()}</td>
				<td>${emp.getAirline()}</td>
				<td>${emp.getPrice()}</td>
			</tr>
		</core:forEach>
	</table>
</body>
</html>