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
    
<script>alert('Item Added Sucessfully!')</script>
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
            <li class="current"><a href="capacity.jsp">Alter capacity</a></li>
          <li><a href="viewbookings.jsp">View Bookings</a></li>
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
          <h2 class="h2-line">Please enter capacity!</h2>
          <div class="box-1">
            
            <div class="extra-wrap">
               </div>
          </div>
        </div>
          
        
        <div class="clear"></div>
               <form action="cap.jsp" method="post" >
                   <center> <table>
                      
					    <tr>
                          <td width="191" height="43"><font color="black">Enter the max capacity:</td>
                          <td width="218"><input id="max" name="max"/></td>
                        </tr>
               
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="BOOK" />
                            </p>
                            <div align="right">
                            
                          </div></td>
                        </tr>
                       
                        
               </table>
            </form>
      
        </div>
      </div>
    </section>
    <!--==============================footer=================================-->
   
  </div>
</div>
</body>
</html>
