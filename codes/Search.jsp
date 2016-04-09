<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<html>
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
<body background="55.jpg">
<marquee><h2 style="color:green">Welcome To IIITG Bus Reservation System</marquee></h2>
<%
String src= request.getParameter("src");
String dest= request.getParameter("dest");
String dat= request.getParameter("date");

  Class.forName("com.mysql.jdbc.Driver");
	  
	  //get connection
	 Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=badal");
	  
	  //statement query
	  try{
	  int dateCmp=0;
	 Statement state =connect.createStatement();
	 String sq = "select datediff('"+dat+"',curdate()) as t";
	 ResultSet resul = state.executeQuery(sq);
	 while(resul.next())
	 {
		dateCmp=resul.getInt("t");
	 }
	 if((dateCmp >=0 ) && (dateCmp<7))
	 {
	 String sql ="select * from bus natural join (has natural join route) where source like '"+src+"' and dest like '"+dest+"' and depart_date = '"+dat+"'";
	 ResultSet result = state.executeQuery(sql);
	 String AC,Sleeper,destn,srce,tm;
	 Date det;
	 int bus_id,tot_seats,r_id,fare;
	 int bd[] = new int[20];
	 int i = 0;
	 out.println("bus_idroute_id____________|source___________|destination__________|sleeper___________|AC___________|fare_________|depart_date________|depart_time\n");
	 while(result.next())
	 {
		bus_id=result.getInt("bus_id");
		tot_seats=result.getInt("tot_seats");
		AC= result.getString("AC_type");
		Sleeper= result.getString("sleeper_type");
		r_id=result.getInt("route_id");
		det= result.getDate("depart_date");
		tm= result.getString("depart_time");
		destn= result.getString("dest");
		srce= result.getString("source");
		fare=result.getInt("fare");
		%><br></br><%
		out.println(bus_id +"__________|"+r_id+"__________|"+srce+"__________|"+destn+"__________|"+Sleeper+"__________|"+AC+"__________|"+fare+"__________|"+det+"__________|"+tm);
		bd[i] = bus_id;
		application.setAttribute("bs_id",bd[i]);
		application.setAttribute("rt_id",r_id);
		application.setAttribute("ddet",det);
		application.setAttribute("dstn",destn);
		application.setAttribute("src",srce);
		%>
		<form method = "get" action = "seatAvail.jsp">
		<input type="submit" value="seatAvailability" >
		</form>
		<%
		out.print("\n");
		i++;
	 }
	 
		String x = (String)application.getAttribute("id");
		//out.println(x);

	 }
	 else
	 out.println("Enquired Bus is not in correct range of date!!! Please Try Again!!!");
	 }
	 catch(Exception e)
	 {
	 out.println(""+e);
	 }
	 connect.close();
 %>
 
		<form method = "get" action = "Search1.jsp">
		<input type="submit" value="Back" >
		</form>
		
 </body>
 </html>