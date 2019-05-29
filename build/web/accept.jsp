<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Mail.Mail"%>
 	<%
  		
   	try {
		   String msg = "Sir/Madam Your Order is Confirmed.";
			 Connection con1 = DbConnection.getconnection();
			String email=request.getParameter("mail");
			String str = "Booked";
       		Statement st1 = con1.createStatement();
       		String query1 ="update bookings set status='"+str+"' where email='"+email+"' ";
	   		st1.executeUpdate (query1);
                        
                        
                          Mail m= new Mail();
                        m.secretMail(msg, email, email);
                        
                        
			con1.close();
			response.sendRedirect("viewbookings.jsp?m1=success");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
