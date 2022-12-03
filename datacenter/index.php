<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    
    padding: 15px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
.cancelbtn1 {
    width: auto;
    padding: 10px 18px;
    background-color: lightgreen;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container1 {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 20%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
	 .cancelbtn1 {
       width: 100%;
    }
}
</style>
<style>
.active {
  background-color: #333;
  color: white;
}

.pointer {cursor: pointer;}
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
    <title>Datacenter for ACE</title>

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

        <!-- submenu elements for #b-menu-2 -->
       <div class="topnav" id="myTopnav">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <li><a class="pointer" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</a></li>
			
            <li ><a href="prof_soci/login.php"> Professional Society</a></li>
         
          </ul>
</div>
          <div id="id01" class="modal">
  
  <form class="modal-content animate" action="login.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
     <!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
    </div>

    <div class="container1">
      <label for="uname"><b>HOD UserName</b></label>
      <input type="text" onfocus="this.value=''" placeholder="Enter Username" name="username" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password">
        
      <button type="submit" name="login">Login</button>
      
    </div>
	
	<div class="container1" style="background-color:#f1f1f1">
    <button type="reset" class="cancelbtn">Clear</button>
    <button type="submit" name="fp" class="cancelbtn1">Forget Password</button>
  </div>
	
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

  <!--End of the login-->
       
<!-- main container -->
    <div class="container">
      <!-- 2-column layout -->
      <div class="row row-offcanvas row-offcanvas-right">
        <div class="col-xs-12 col-sm-9">

          <!-- jumbotron -->
         
		  
		  
		  <img class="mySlides" src="images\img5.jpg" style=" width:100%;">
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
          

          
        </div><!--/span-->

        <!-- column 3 (sidebar) -->
        <div class="col-sm-3 sidebar-offcanvas" id="sidebar">
          

          <!-- box 5 -->
          <div class="panel panel-danger">
            <div class="panel-heading">
              <h3 class="panel-title">News Feeds</h3>
            </div>
            <div class="panel-body">
               <marquee height= "100%" behavior="scroll" direction="up">
    <p><img src="images\new.gif" height="30px" width="40px">welcome to our ACE<img src="images\new.gif" height="30px" width="40px"></p><br>
	 <!--p><img src="images\new.gif" height="30px" width="40px">welcome to our ACE<img src="images\new.gif" height="30px" width="40px"></p--><br>
	  <p><img src="images\new.gif" height="30px" width="40px">Faculties are requested to update your Profile in the Data Center<img src="images\new.gif" height="30px" width="40px"></p><br>
	   <!--p><img src="images\new.gif" height="30px" width="40px">welcome to our ACE<img src="images\new.gif" height="30px" width="40px"></p--><br>
	    <!--p><img src="images\new.gif" height="30px" width="40px">welcome to our ACE<img src="images\new.gif" height="30px" width="40px"></p--> <br>
		<!--p><img src="images\new.gif" height="30px" width="40px">welcome to our ACE<img src="images\new.gif" height="30px" width="40px"></p-->
  </marquee>
            </div>
          </div>

          

        </div><!-- /column 3 (sidebar) -->

      </div><!--/row-->

    </div><!--/.container-->
      <footer>
        <nav class="navbar navbar-default navbar-static-bottom" role="navigation">
        <p class="navbar-text">&copy Copyright 2019</p>
        <p class="navbar-text navbar-right"><a href="#">Datacenter For ACE</a></p>
        </nav>
      </footer>


    <!-- add javascripts -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>