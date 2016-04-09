<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body background="56.jpg">
<%
String y = (String)application.getAttribute("Flag");
if (y == "True")
{
	
}
else
{
	out.println("You are logged out!! \n Need to log in again!!!");
	return;
}
%>
<marquee><h2 style="color:green">Welcome To IIITG Bus Reservation System</marquee></h2>
<h2> Seat Availability : </h2> 

<form method = "get" action = "SeatAvailability.jsp">
<table>
<tr><td><b>Bus Id :</b></td><td><input type="text" name="bus_id" /></td></tr>
<tr><td><b>Route Id :</b></td><td><input type="text" name="r_id" /></td></tr>
<tr><td><b>Source Station :</b></td><td><input type="text" name="src" /></td></tr>
<tr><td><b>Destination Station :</b></td><td><input type="text" name="dest" /></td></tr>
<tr><td><b>Date (YYYY-MM-DD) :</b></td><td><input type="text" name="date" /></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="submit" /> <input type="reset" value="reset" /></td></tr></td></tr>
<%
String x = (String)application.getAttribute("id");
//out.println(x);
%>
</table>
</form>

<form method = "get" action = "Booking.jsp">
<p>
<input type="submit" value="Back" >
</p>
</form>

</body>
</html>