import static org.junit.Assert.assertEquals;
import junit.framework.*;

import java.sql.*;
import java.io.*;
import java.lang.*;

public class login extends TestCase{
	
	public void testLogin(){ 
	      assertEquals("Correct",loginSetUp("vb","12345"));
	   }
	public void testLogin2(){ 
	      assertEquals("Wrong",loginSetUp("vb","123"));
	   }
	public void testLogin3(){ 
	      assertEquals("Blank",loginSetUp(""," "));
	   }
	protected String loginSetUp(String a, String b){  
		  
	if((a == "")||(b == ""))
	{
			return ("Blank");
	}
	else
	{
		try
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
						 return("Correct");
					}
				}
				
				
		  }
		  if(flag==0)
		  {
			//out.println(a+" a+b "+b);
		    return("Wrong");
		  }
		  connect.close();
		}
		  catch(Exception e)
		  {
			  System.out.println(e);
		  }
		   
	}
	return ("Testing");
	

}
	
}
	

