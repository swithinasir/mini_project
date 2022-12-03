<?php
session_start();

if( !isset($_SESSION['deptid']) )
{
	header("location:login.php");
}
else
{
?>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.active {
  background-color: #333;
  color: white;
}

.topnav a:hover {
  background-color: #333;
  color: black;
}

.topnav {
  overflow: hidden;
  background-color: #ddd;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
    <meta charset="utf-8" />
    <meta name="author" content="Script Tutorials" />
    <meta name="description" content="Responsive Websites Using BootStrap - demo page">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Datacenter For ACE</title>

    <!-- css stylesheets -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
 <body style="background-color: #66c2ff">

   

   

    

   

	  <!--This is header-->
	<div class="header" align="center"><h1><img width="100%" src="images/header.jpg"></h1>
	</div>
	<!--End of header-->
	
      <!-- second menu bar -->
   
       

        <!-- submenu elements for #b-menu-2
				
				stud/stud_frame.php
		-->
       
          <div class="topnav" id="myTopnav">
		  <ul class="nav navbar-nav">		  
            <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Dept Of <?php echo $_SESSION['deptid'];?></a></li>
			<li><a href="faculty/fac_info.php">FACULTY INFO</a></li>  
			<li><a href="hod/">HOD UPDATES</a></li>
			<li><a href="logout.php">LOGOUT</a></li> 			
          </ul>		  
</div>
 
     <!-- main container -->
    <div class="container">
      <!-- 2-column layout -->
	  <br>
      <div class="row row-offcanvas row-offcanvas-right">
      <div class="container">
		  <img class="mySlides" src="images\img3.jpg" style=" width:100%;">
  <img class="mySlides" src="images\img2.jpg" style=" width:100%">
 <!-- <img class="mySlides" src="images\img3.jpg" style=" width:100%">-->
            <script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
          </div> 
      </div><!--/row-->
    </div><!--/.container-->
      <footer>
        <nav class="navbar navbar-default navbar-static-bottom" role="navigation">
        <p class="navbar-text">&copy Copyright 2019</p>
        <p class="navbar-text navbar-right"><a href="index.php">Datacenter For ACE</a></p>
        </nav>
      </footer>
    <!-- add javascripts -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
<?php
}
?>