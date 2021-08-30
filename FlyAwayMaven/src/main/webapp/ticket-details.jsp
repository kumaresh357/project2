<%@ page import="com.Flights"%>
<%@ page import="com.SearchInputPojo"%>
<%@ page import="com.UserInputPojo"%>
<%@ page import="com.atabase"%>
<%@ page import="com.PaymentInputPojo" %>
<%
atabase data = new atabase();
Flights fl = new Flights();
SearchInputPojo sip = new SearchInputPojo();
UserInputPojo uip = new UserInputPojo();
PaymentInputPojo pip = new PaymentInputPojo();
pip.setName(request.getParameter("name_on_card"));
pip.setCard(request.getParameter("card_details"));
if (pip.getName().equals("") || pip.getCard().equals("")) {
	out.println("Please enter valid card details");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket-Details</title>
</head>
<body>
	<div>
		<p align="center">
			<span><strong>Your ticket has been booked. The
					summary/details are as follows</strong></span>
		</p>
		<h3>Ticket Summary</h3>
		<h4>
			<strong><%=sip.getSource()%> to <%=sip.getDestination()%> | <%=sip.getDate()%></strong>
		</h4>
		<p align="left"><%=fl.getFlightId()%>-<%=fl.getAirline()%>
			(Travellers
			<%=sip.getPassangers()%>)
		</p>
		<br> <br>
		<h3>
			<strong>Passenger Summary</strong>
		</h3>
		<h3>
			Booking Name-<%=uip.getName()%>
			| Email-<%=uip.getEmail()%>
			| Phone-<%=uip.getPhone()%></h3>
		<br>
		<h3>
			<strong>Payment Summary</strong>
		</h3>
		<h4>
			Payment By-<%=pip.getName()%>
			| Card No-<%=pip.getCard()%></h4>
		<br>
		<h2 align="right">
			<strong>Total Paid- Rs.<%=fl.getPrice() * sip.getPassangers()%></strong>
		</h2>
		<br> <br>
	</div>
</body>
</html>