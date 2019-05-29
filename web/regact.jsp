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

String date= request.getParameter("date");
String guest= request.getParameter("guest");
String time= request.getParameter("time");
String fname= request.getParameter("fname");
String lname= request.getParameter("lname");

String email= request.getParameter("email");
String mobile=request.getParameter("mobile");
int id = 0;

//BigInteger phno = new BigInteger(phoneno);

try
{

Connection con = DbConnection.getconnection();

PreparedStatement ps=con.prepareStatement("insert into bookings values(?,?,?,?,?,?,?,?,?)");
ps.setInt(1,id);
ps.setString(2,date);
ps.setString(3,guest);
ps.setString(4,time);
ps.setString(5,fname);
ps.setString(6,lname);
ps.setString(7,email);
ps.setString(8,mobile);
ps.setString(9,"pending");



ps.executeUpdate();


//out.print(Successfully Registered);

response.sendRedirect("reservation.jsp?m1=success");
out.println("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>


</body>
</html>


