<!DOCTYPE html>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html lang="en">
<head>
<title>Restaurant</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>

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
          <li class="current"><a href="menu.html">Menu</a></li>
          <li><a href="reservation.jsp">Reservation</a></li>
          <li><a href="gallery.html">Gallery</a></li>          
          <li><a href="admin.jsp">Admin</a></li>
          <li><a href="">&nbsp;</a></li>
        </ul>
        <div class="clear"></div>
      </nav>
    </header>
    <!--==============================content================================-->
    <section id="content">
      <div class="block-1">
        <div class="border-right">
          <div class="block-1-title"> <span>01.</span>
            <div class="text-1">Best<strong>cuisine</strong></div>
            <strong class="clear"></strong> </div>
          <p class="border-1">This website template has several pages: Restaurant, Cuisine, Wine List, CookBook, Gallery, Contacts (note that contact us form - doesn't work).</p>
        </div>
        <div class="border-right">
          <div class="block-1-title"> <span>02.</span>
            <div class="text-2">Good<strong>rest</strong></div>
            <strong class="clear"></strong> </div>
          <p class="border-1">Cras mattis tempor eros nec tristique. Sed sed felis arcu, vel vehicula augue. Maecenas faucibus sagittis cursus. Fusce tincidunt, tellus eget tristique cursus.</p>
           </div>
        <div class="border-right">
          <div class="block-1-title"> <span>03.</span>
            <div class="text-3">Great<strong>service</strong></div>
            <strong class="clear"></strong> </div>
          <p class="border-1">Maecenas faucibus sagittis cursus. Fusce tincidunt, tellus eget tristique cursus, orci mi iaculis. sem, sit amet dictum velit velit eu magna. Nunc viverra nisi sed orci.</p>
          </div>
        <div class="block-1-last">
          <div class="block-1-title"> <span>04.</span>
            <div class="text-4">Best<strong>cooks</strong></div>
            <strong class="clear"></strong> </div>
          <p class="border-1">Fusce tincidunt, tellus eget tristique cursus, orci mi iaculis. sem, sit amet dictum velit velit eu magna. Nunc viverra nisi sed orci tincidunt at hendrerit orci.</p>
          </div>
      </div>
      <div class="block-2 pad-2">
        <div class="col-4">
          
        </div>
          <%
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getconnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from biryani");
                                   

                            %>
          
          
        <div class="col-5 left-2">
          <h2 class="h2-line-3">Biryani Items :</h2>
          <div class="wrap">
            <ul id="list">
                <%
                 while (rs.next()) {
                %>
              <li><strong><%=rs.getString("name")%></strong><span><%=rs.getInt("price")%></span><em>&nbsp;</em>
                  Number: <input type="number" id="myNumber"></li>
              <%}%> </ul>
        
                  <button onclick="F()">Try it</button>
             <script>
                  function F(){
                     
                     var lis=document.getElementById("list").getElementsByTagName("li");
                     var total=0;
                     var i;
                      
                     for(i=0;i<lis.length;i++)
                     {
                          
                         var cost=Number(lis[i].getElementsByTagName("span")[0].innerHTML);
                         var quant=Number(lis[i].getElementsByTagName("input")[0].value);
                         total+=(quant*cost);
                      }
                       window.location = "cart.jsp?value=" + total; 
                    }
            
</script>

  
            
              
           
            
          </div>
        </div>
      </div>
    </section>
                            <%
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
    <!--==============================footer=================================-->
   
  </div>
</div>
</body>
</html>
