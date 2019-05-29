<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Restaurant</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
<link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
$(document).ready(function(){				   	
	$('.slider')._TMS({
		show:0,
		pauseOnHover:true,
		prevBu:false,
		nextBu:false,
		playBu:false,
		duration:700,
		preset:'fade',
		pagination:true,
		pagNums:false,
		slideshow:8000,
		numStatus:false,
		banners:false,
		waitBannerAnimation:false,
		progressBar:false
	})		
});
</script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Booking Confirmed Sucessfully!')</script>
}  

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Item Failed..!')</script>
 <%
}
%> 
<body>
<div class="bg-top">
  <div class="bgr">
    <!--==============================header=================================-->
    <header>
      <h1> </h1>
      <h2> <center> <font size="10" color="black">Restaurant Management System</font></center> </h2>
     
      <nav>
        <ul class="menu">
         <li><a href="adminhome.jsp">Home</a></li>
           <li><a href="additems.jsp">Add Items</a></li>
            <li><a href="capacity.jsp">Alter capacity</a></li>
          <li class="current"><a href="viewbookings.jsp">View Bookings</a></li>
          <li><a href="logout.jsp">Logout</a></li>
          <li><a href="">&nbsp;</a></li
          <li><a href="">&nbsp;</a></li
          <li><a href="">&nbsp;</a></li>
        </ul>
        <div class="clear"></div>
      </nav>
      <div id="slide">
        <div class="slider">
          <ul class="items">
            <li><img src="images/slider-1.jpg" alt=""></li>
            <li><img src="images/slider-2.jpg" alt=""></li>
            <li><img src="images/slider-3.jpg" alt=""></li>
          </ul>
        </div>
       
      </div>
    </header>
    <!--==============================content================================-->
    <section id="content">
      
      <div class="block-2 pad-1">
        <div class="col-1">
                  
               <center>
        <table  border="1" width="100%">
                 
            <tr style="color:red">                         
                        <th width="43">S.NO</th>
                        <th width="43">Date</th>
                        <th width="43">Guests</th>
                        <th width="43">time</th>
                        <th width="43">Mail</th>
                        <th width="43">Mobile</th>
                        <th width="43">Status</th>
                        <th width="43">Accept</th>
                   </tr>
            
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    
                            Connection con1 = DbConnection.getconnection();
                           PreparedStatement ps1 = con1.prepareStatement("select * from bookings");

                                                        
                            ResultSet rs = ps1.executeQuery();
                     %>
                     <%
                            while(rs.next()){ 
                            
          
                                     
 %>
 <tr style="color: black">
    <th><%=rs.getInt("id")%></th>
    <th><%=rs.getString("date")%></th>
    <th><%=rs.getString("guests")%></th>
    <th><%=rs.getString("time")%></th>
    <th><%=rs.getString("email")%></th>
    <th><%=rs.getString("mobile")%></th>
    <th><%=rs.getString("status")%></th>
    <th><a href="accept.jsp?mail=<%=rs.getString("email")%>">Accept</a></th>

    

   </tr>
    <%
        }
         
    %>
                    



                  

            </form>
        </table>
             
          </div>
        </div>
        
        <div class="clear"></div>
        
      </div>
    </section>
    <!--==============================footer=================================-->
   
  </div>
</div>
</body>
</html>
