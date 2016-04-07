<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body background="51.jpg">
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
<marquee><h2 style="color:green">Welcome To IIITG Bus Reservation System </marquee></h2>
<h2>Cancel Ticket : </h2> 

<form method = "get" action = "cancel.jsp">
<table>
<tr><td><b>Bus No :</b></td><td><input type="text" name="b_no" /></td></tr>
<tr><td><b>Ticket :</b></td><td><input type="text" name="t_no" /></td></tr>
<tr><td><b>Seat No :</b></td><td><input type="text" name="s_no" /></td></tr>
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