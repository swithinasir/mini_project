<?php
session_start();
include("../conn/config.php");
?>

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

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
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

.container {
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
    width: 50%; /* Could be more or less, depending on screen size */
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
}
</style>
<div height="100%" width="100%">
<div >
<style>
a:link, a:visited {
    
    color: black;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}



</style>
<style>
.addbtn {
    width: autox;
    padding: 10px 18px;
    background-color: #66ffff;
	font-size: 20px;
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .addbtn {
       width: 100%;
    }
}
</style>
<script language="JavaScript" type="text/javascript">
    function change2(url)
    {
    parent.frame2.location=url;
    }
     </script>
<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.min.css" rel="stylesheet">

<style>


ul {
    list-style-type: none;
    margin: 0;
    padding: 0px 50px;
    overflow: hidden;
   background-color: #a3a3c2;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px 50px;
	border-right:2px solid #bbb;

    text-decoration: none;
}

li a:hover {
    background-color:Skyblue ;
	
}

.button1 {
    background-color: #a3a3c2;
    border: none;
    color: white;
     padding: 0px 50px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
	width: 100%;
    margin: 0 auto;
    cursor: pointer;
}
</style>
<style>
body {
background-color: black;
  margin:0;
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
</style>
	<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.min.css" rel="stylesheet">
     
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
<div style="background-color:black">
 <nav class="navbar navbar-inverse navbar-fixed-top">

  <a href="#home" class="active"><span class="glyphicon glyphicon-home"></span> Dept Of <?php echo $_SESSION['deptid'];?></a>
  <a href="personal/fac_profile.php" target= "frame1" ><img title="Add Staff" src="../images/Add.png" height="25px" width="35px"></a> 
  <a href="otp/index.php" target= "frame1" ><img title="Remove Staff" src="../images/Remove.png" height="40px" width="40px"></a> 
    <a href="../index1.php" target= "_parent"  ><img title="Back" src="../images/back.png" height="25px" width="35px"></a>  
  <a href="dept_logout.php" target= "_parent"  ><img title="Logout" src="../images/logout.png" height="25px" width="35px"></a> 
 
   
</div>     

</nav>
<br>
<br>

<?php
//onclick=change2('faculty/education/edu_nav.php')
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac";
$sql="SELECT * FROM `$aaa`";
$result=mysqli_query($con,$sql);
if ($result->num_rows > 0) {
    // output data of each row
	//echo '<div class="topnav" id="myTopnav">';
  
   
    while($row = $result->fetch_assoc()) {
		?>
		<div class="topnav" id="myTopnav">
		<?php
		if($row['status']=="relive")
		{
		?>
<a href="staff_login.php" class ="button1"target="_parent"><?php echo $row['name']; ?></a>
<?php
		}
?>
</div><br>
    <?php   
    }
	//echo '</div>'; 
}
?>
 <a href="fac_left.php"  ><button>Existing Staff</button></a> 
</div>
</body>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="staff_login.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
     <!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
    </div>

    <div class="container">
      <label for="uname"><b>Staff_id</b></label>
      <input type="text" onfocus="this.value=''" placeholder="Enter staff id" name="username" required>

      <label for="psw"><b>Aadhar No</b></label>
      <input type="password" placeholder="Enter last 4 digit" name="password" required>
        
      <button type="submit" name="login">Login</button>
      
    </div>
	
	<div class="container" style="background-color:#f1f1f1">
    <button type="reset" class="cancelbtn">Clear</button>
    
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