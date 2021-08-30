<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking-Details</title>
</head>
<body>
<section>
        <section>
            <div class="row">
                <div class="col">
                    <h1 align="center"><b>Booking Details</b></h1>
                    <p align="center"><span><strong>Enter Passenger Details</strong></span></p><br>
                </div>
            </div>
            <section>
                <form action=payment-gateway.jsp method="post">
                    <div>
                        <label for="pname">Passenger Name</label>
                        <input type="text" id="pname" name="pname" placeholder="Enter name of the/any passenger(s)">
                    </div>
                    <div>
                        <label for="email">Email address</label>
                        <input type="email" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div>
                        <label for="phone">Phone</label>
                        <input type="number" id="phone" name="phone" placeholder="Enter phone number">
                    </div>
                    <br>
                    <button type="submit" value="Submit">Submit</button>
                </form>
            </section>
        </section>
    </section>
</body>
</html>