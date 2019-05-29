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
<body>
<div class="bg-top">
  <div class="bgr">
    <!--==============================header=================================-->
    <header>
      <h1> </h1>
      <h2> <center> <font size="10" color="black">Restaurant Management System</font></center> </h2>
     
      <nav>
        <ul class="menu">
          <li><a href="index.html">Home</a></li>
          <li><a href="menu.html">Menu</a></li>
          <li><a href="reservation.jsp">Reservation</a></li>
          <li><a href="gallery.html">Gallery</a></li>          
          <li class="current"><a href="admin.jsp">Admin</a></li>
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
          <h2 class="h2-line">Admin Login</h2>
          <div class="box-1">
            
            <div class="extra-wrap">
               <form action="adminact.jsp" method="post" id="leavereply">
                   <center>
                        <label><font color="black">Username  :</font></label>
                        <input type="text" placeholder="Enter Username" name="username" required>
                            <br><br>

                        <label><font color="black">Password  :</font></label>
                        <input type="password" placeholder="Enter Password" name="password" required>
                            <br>
                       <br>   <br>
                        <button type="submit">Login</button>
                        <button type="button" class="cancelbtn">Cancel</button>
    
                        </form>
             
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
