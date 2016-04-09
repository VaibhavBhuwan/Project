<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css">
<marquee><h2 style="color:green">Welcome To IIITG Bus Reservation System</marquee></h2>
</head>
<body background="58.jpg">
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
<h2> Fill form for reservation : </h2> 

<form method = "get" action = "res.jsp">
<table>
<tr><td><b>Name :</b></td><td><input type="text" name="name" /></td></tr>
<tr><td><b>Age :</b></td><td><input type="text" name="age" /></td></tr>
<tr><td><b>Phone No :</b></td><td><input type="text" name="phone" /></td></tr>
<tr><td><b>Sex :</b></td><td><input type="text" name="sex" /></td></tr>
<tr><td><b>Personal ID :</b></td><td><input type="text" name="p_id" /></td></tr>
<tr><td><b>Credit Card No :</b></td><td><input type="text" name="c_no" /></td></tr>
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