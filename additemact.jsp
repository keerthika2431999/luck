<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Mail.Mail"%>
 	<%
  		
   	try {
		  
			 Connection con1 = DbConnection.getconnection();
			String cat=request.getParameter("cat");
                        String name=request.getParameter("name");
                       
                        int x = Integer.parseInt(request.getParameter("price"));
			
       		Statement st1 = con1.createStatement();
       		PreparedStatement ps=con1.prepareStatement("insert into "+cat+" values(?,?)");
                ps.setString(1,name);
                ps.setInt(2,x);
            
                ps.executeUpdate();

           
			response.sendRedirect("additems.jsp?m1=success");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			response.sendRedirect("additems.jsp?m2=Failed");  
			
   		}
   		
	%>
