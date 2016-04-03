<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<marquee><h2 style="color:green">Welcome To IIITG Bus Reservation System</marquee></h2>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body background="53.jpg">
<%
String y = (String)application.getAttribute("Flag");
if (y == "True")
{
	String x = (String)application.getAttribute("id");
}
else
{
	out.println("You are logged out!! \n Need to log in again!!!");
	return;
}
//out.println(x);
%>
<h3> <a href = "Search1.jsp">search bus </a></h3>
<h3> <a href = "SeatAvailability1.jsp">seat availability </a></h3>
<h3> <a href = "reserve1.jsp">reservation </a></h3>
<h3> <a href = "cancel1.jsp">cancel tickets </a></h3>
<h3> <a href = "history.jsp">booking History </a></h3>
<h3><a href = "image.html">Image Gallery </a></h3>
<h3><a href = "loginpage.jsp">log out </a></h3>



</body>
</html>