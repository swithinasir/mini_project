<?php
session_start();
include("../../conn/config.php");
?>

<html>
<head>

<meta charset="utf-8">
<style>
.required:after { content:" *";color: #e32; }

/* Full-width input fields */
input[type=number]{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	 background-color: #f2f2f2;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.container1 {
    padding: 16px;
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


</style>



<style>
* {
    box-sizing: border-box;
}

input[type=text],input[type=date],input[type=month],td, select, textarea {
   
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
 background-color: #f2f2f2;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}



.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>

<title>Admin</title>
<link rel="stylesheet"  href="style.css" />
</head>

<body>
   
  	<!--Start of First PHD update-->

<?php
if(isset($_POST["form1"])){
  ?>
  <form class="modal-content animate" action="phd_fac1.php"  method="post" enctype="multipart/form-data">
    <div align="right">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">x</span>    
    </div>

    <div class="container">
	 <div class="row">
	
      <label for="year"><b>Year of Complition</b></label>


      <input type="month" id="phyear" name="phyear" required>

	
	</div>
	<br>
	 <div class="row">
	
      <label for="file"><b>Upload Certificate</b></label>
	  

     <input type="file" id="file" name="file">
    </div>
	
      <button type="submit" class="button1 button2" name="update1" style="width:auto;">Update</button>
     </div>
	
<?php
}
?>
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
<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<script>
// Get the modal
var modal = document.getElementById('id03');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<!--End  of First PHD update-->
<!--Start of second PHD update-->
<?php
if(isset($_POST["form2"])){
  ?> 
  <form class="modal-content animate" action="phd_fac1.php"  method="post" enctype="multipart/form-data">
    <div align="right">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">x</span>    
    </div>

    <div class="container">
	 <div class="row">

      <label for="year"><b>Year of Complition</b></label>

      <input type="month"  name="phyear" required>
	</div>
	

	<br>
	 <div class="row">
	
      <label for="file"><b>Upload Certificate</b></label>
	 
     <input type="file" id="file" name="file">
    </div>

      <button class="button1 button2" name="update2" style="width:auto;">Update</button>
         
    </div>
<?php
}
?>
<!--End  of Second PHD update-->
<!--Start of Third PHD update-->
<?php
if(isset($_POST["form3"])){
  ?>
  <form class="modal-content animate" action="phd_fac1.php"  method="post" enctype="multipart/form-data">
    <div align="right">
      <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">x</span>    
    </div>

    <div class="container">
	 <div class="row">

      <label for="year"><b>Year of Complition</b></label>

      <input type="month"  name="phyear" required>
	</div>
	
	</div>
	<br>
	 <div class="row">

      <label for="file"><b>Upload Certificate</b></label>
	
     <input type="file" id="file" name="file">
    </div>
	
      <button class="button1 button2" name="update3" style="width:auto;">Update</button>
        
    </div>
<?php
}
?>
<!--End  of Third PHD update-->

<?php
if(isset($_POST["update1"])){
	$phyear =$_POST["phyear"];
	echo $phyear;
	$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";
	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/phdcer/".$aaa."/";
	
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
	$sql = "UPDATE `$aaa` SET `phyear`='$phyear',`phcertificate`='$final_file' WHERE sid= '$sid'";	
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Updated Sucessfully");</script>';
	echo '<script type="text/javascript">window.location.href = "phd_fac.php";</script>';
	
	}
	}
}
if(isset($_POST["update2"])){
	$phyear =$_POST["phyear"];
	$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";
	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/phdcer/".$aaa."/";
	
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
	$sql = "UPDATE `$aaa` SET `ph1year`='$phyear',`ph1certificate`='$final_file' WHERE sid= '$sid'";
if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Updated Sucessfully");</script>';
	echo '<script type="text/javascript">window.location.href = "phd_fac.php";</script>';
	
	}	
	}
}
if(isset($_POST["update3"])){
	$phyear =$_POST["phyear"];
	$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";
	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/phdcer/".$aaa."/";
	
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
	$sql = "UPDATE `$aaa` SET `ph2year`='$phyear',`ph2certificate`='$final_file' WHERE sid= '$sid'";	
		if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Updated Sucessfully");</script>';
	echo '<script type="text/javascript">window.location.href = "phd_fac.php";</script>';
	
	}
	}
}
?>
</body>

	
</html>