<?php
session_start();

?>
<!doctype html>
<html>
<head>

<meta charset="utf-8">

<title>Admin</title>
<link rel="stylesheet"  href="style.css" />
</head>

<body>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.active {
  background-color: #4CAF50;
  color: white;
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
<style>
.mySlides {display:none;}
</style>
<div class="header" align="center"><h1><img width="100%" src="images/header.jpg"></h1>
	</div>
	<!--End of header-->
	<!--This is NavBar-->
	<div class="topnav" id="myTopnav">
  <a href="#" class="active">Dept Of <?php echo $_SESSION['deptid'];?></a>
  <a href="faculty/fac_info.php">FACULTY INFO</a>
  <a href="#">DEPARTMENT INFO</a>
  <a href="#">STUDENT INFO</a>
   <a href="#">FACILITY</a>
  <a href="javascript:void(0);" class="icon" onClick="myFunction()">
    <i>=</i>
  </a>
</div>
	<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
	<!--End of NavBar-->
	

    <center>
  <img class="mySlides" src="images/img1.jpg" style=" width:60%">
  <img class="mySlides" src="images/img2.jpg" style=" width:60%">
  <img class="mySlides" src="images/img3.jpg" style=" width:60%">
</center>

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

 

	
	

	<!--This is Footer-->
<div align="center" style="background-color:#16365d; font-size: 20px; color: #fff;" >
	<p>© 2018 ALL RIGHTS RESERVED</p>
	      ACE
	</div>
	<!--End of Footer-->
				
</div>


</body>

	
</html>





