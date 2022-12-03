<?php
session_start();
include("../conn/config1.php");
?>

<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Set a style for all buttons */
button {
    background-color: skyblue;
    color: white;
  padding: 10px 10px;
    border: none;
    cursor: pointer;
    width: 100%;
	
}
button2 {
   
  padding: 10px 10px;
    border: none;
    cursor: pointer;
    width: 100%;
	
}
button:hover {
    opacity: 0.8;
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
}
</style>
<style>
a:link, a:visited {
    
    color: black;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}
a:hover, a:active {
     background-color:white;
    color: black;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


</style>
<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.min.css" rel="stylesheet">

<style>
/* Style the buttons */
.dropbtn {
   text-align: center;
	border-radius: 16px;
    background-color: skyblue;
    color: black;
  padding: 10px 10px;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Style the active class, and buttons on mouse-over */
.dropbtn:hover {
    background-color: #ddd;
    color: black;
}
</style>
<style>
/* Style the buttons */
.btn {
   text-align: center;
	border-radius: 16px;
    background-color: skyblue;
    color: black;
  padding: 10px 10px;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Style the active class, and buttons on mouse-over */
.btn:hover {
    background-color: #ddd;
    color: black;
}
</style>
<style>

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
  background-color: grey;
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


.dropdown-content {
  display: none;
  position: absolute; 
  border-radius: 16px;
  background-color: grey;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd; color: black;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #ddd;
    color: black; 
  border-radius: 16px;}
</style>
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



<body style="background-color:black">
<br>
<br>

<div height="100%" width="100%">
<div style="background-color:black">
 <nav class="navbar navbar-inverse navbar-fixed-top">
<div class="topnav" id="myTopnav">
<a href="soci_logout.php" target= "_parent" ><button class="btn" style="background-color:Skyblue">Logout</button></a>  
<!--  <a href="../logout.php" target= "_parent" ><button class="btn" style="background-color:red">Logout</button></a> 
  -->
</div>     

</nav>
<br>
<br>
<a href="soci_org.php" class ="dropbtn" target="frame1">Event Organized</a><br><br>
<!--<a href="#" class ="dropbtn" target="frame1">View Event Organized</a><br><br>-->
</div><br>
   
</div>
</body>