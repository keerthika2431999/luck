<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
<head>
<title>Registration Page</title>

</head>

<body>
<%

String max= request.getParameter("max");
int id = 0;
//BigInteger phno = new BigInteger(phoneno);

try
{

Connection con = DbConnection.getconnection();

PreparedStatement ps=con.prepareStatement("insert into capacity values(?,?)");
ps.setInt(1,id);
ps.setString(2,max);





ps.executeUpdate();


//out.print(Successfully Registered);

//response.sendRedirect("reservation.jsp?m1=success");
out.println("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>


