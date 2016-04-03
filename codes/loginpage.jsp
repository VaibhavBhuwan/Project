<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
application.setAttribute("Flag","False");
%>
<html>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="main.css">
<body background="53.jpg">
<title>Login</title>
<center><img src="a.jpg" width="60" height="40"><br>
<td><h2 style="color:green"><u>IIITG Bus Reservation System</u></h2></center>
<marquee><h2 style="color:green">
Welcome To IIITG Bus Reservation System 
</h2></marquee></td>
<form action="login.jsp" method="post">
<table>
<tr><td><b>user Id :</b></td><td><input type="text" name="t1" /></td></tr>
<tr><td><b>Password:</b></td> <td><input type="password" name="t2" /></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Login"/></td></tr>
</table></form>
<b>
New User !!! 
</br><br>
Create account
<tr><td colspan="2" align="center"><a href = "signup.html">Signup</a></td></tr>
</br></right></b>
</body>
</html>