<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<html>
<body background="53.jpg">
<marquee><h2 style="color:green">Welcome To IIITG Bus Reservation System</marquee></h2>
<%

String a= request.getParameter("t1");
String b= request.getParameter("t2");
if((a == "")||(b == ""))
{
		out.println("Please Enter your id and password");
}
else
{
 Class.forName("com.mysql.jdbc.Driver");
	  
	  //get connection
	 Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=badal");
	  
	  //statement query
	 Statement state =connect.createStatement();
	  ResultSet result = state.executeQuery("select user_id,pwd from user_details");
	        int flag = 0;
		  String pwd ;
		  String user_id ;
	  while(result.next()){
			user_id =result.getString("user_id");
		   pwd = result.getString("pwd");
		    if(a.equals(user_id))
			{
				if(b.equals(pwd))
				{
					 flag = 1;
					 out.println("hi  " +user_id+ " logged in successfully");
					 application.setAttribute("id",user_id);
					 application.setAttribute("Flag","True");
					 String site = new String("Booking.jsp");
					 response.setStatus(response.SC_MOVED_TEMPORARILY);
					 response.setHeader("Location", site); 
				}
			}
			
			
	  }
	  if(flag==0)
	  {
		//out.println(a+" a+b "+b);
	    out.println("your id/pwd is wrong");
	  }
	   connect.close();
}
 %>
 </body>
 </html>