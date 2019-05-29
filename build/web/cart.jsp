
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%String message = request.getParameter("value");
int id = 0;
try
{

Connection con1 = DbConnection.getconnection();

PreparedStatement ps=con1.prepareStatement("insert into cart1 values(?,?)");
ps.setInt(1,id);
ps.setString(2,message);
ps.executeUpdate();
out.println("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
//String message1 = request.getParameter("value1");

%>



<div>
        <%
          Connection con1 = DbConnection.getconnection();
                           PreparedStatement ps1 = con1.prepareStatement("select * from cart1 where id in (select max(id) from cart1)");

                                                        
                            ResultSet rs = ps1.executeQuery();
        
        
        %>
        <%
                            while(rs.next()){ 
                            
          
                                     
 %>
  <tr style="color: black">
      <th><%=rs.getString("cart1")%></th>
      </tr>
       <%
        }
         
    %>
</div>
    </body>
</html>
