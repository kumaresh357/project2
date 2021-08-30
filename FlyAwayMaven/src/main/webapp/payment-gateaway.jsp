<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.Flights"%>
<%@ page import="com.SearchInputPojo"%>
<%@ page import="com.UserInputPojo" %>
<%@ page import="com.atabase" %>
<%
atabase data = new atabase();
Flights fl = new Flights();
SearchInputPojo sip = new SearchInputPojo();
UserInputPojo uip = new UserInputPojo();
uip.setName(request.getParameter("pname"));
uip.setEmail(request.getParameter("email"));
uip.setPhone(request.getParameter("phone"));
if (uip.getName().equals("") || uip.getEmail().equals("") || uip.getPhone().equals("")) {
	out.println("Please enter valid passenger details");
}
else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment-Gateaway</title>
</head>
<body>
	<section>
		<div>
			<h1 align="center">
				<b>Checkout</b>
			</h1>
			<p align="center">
				<span><strong>Enter Payment Details</strong></span>
			</p>
			<br>
		</div>
		<form action="ticket-details.jsp" method="post">
			<div>
				<label for="card_details">Name on Card</label> <input type="text"
					id="name_on_card" name="name_on_card"
					placeholder="Enter Name on Card">
			</div>
			<div>
				<label for="card_details">Card Number</label> <input type="number"
					id="card_details" name="card_details"
					placeholder="Enter Card Number">
			</div>
			<br>
			<p align="left">
				<span><strong>Total fare = <br> <%=fl.getPrice()%> X <%=sip.getPassangers()%> persons = Rs.<%=fl.getPrice() * sip.getPassangers()%></strong></span>
			</p>
			<button type="submit" value="Submit">Confirm Payment</button>
		</form>
	</section>
</body>
</html>
<%
}
%>