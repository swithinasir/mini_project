<?php
session_start();
include("../../conn/config.php");
?>
<html>
<head>

<meta charset="utf-8">
<style>



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

input[type=text] {
    width: 50%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
	 background-color: #f2f2f2;
}
</style>




<title>Admin</title>
<link rel="stylesheet"  href="style.css" />
<script language="Javascript">
function hideA()
{  
    document.getElementById("B").style.visibility="visible";    
}

function hideB()
{
    document.getElementById("B").style.visibility="hidden";
}
</script>
</head>

<body style="background-color:grey;">
   
  	<!--Start of First PHD update-->

<?php
if(isset($_POST["upload"])){
 
  ?>
	<form class="modal-content animate" action="app.php"  method="post" enctype="multipart/form-data">
			<br>
			<div class="row">
				<center>
					<div class="row">
      <div class="col-25">
        <label  class="required" for="lname">Appointment Order (only PDF Format)</label>
		<label class="message" id="msg1" > </label>
      </div>
      <div class="col-75">
        <input type="file" id="file" name="file">
      </div>
    </div>
					
					<button type="submit" name="update" style="width:auto;">upload</button>
				</center>
			</div>
		
	</form>
<?php
}
if(isset($_POST["update"])){
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac";
	
	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/aadhar/".$aaa."/";
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
		
	$sql4 = "UPDATE `$aaa` SET app_order ='$final_file' WHERE sid= '$sid'";
				if(mysqli_query($con,$sql4))
				{
					echo '<script language="javascript">alert(" Updated Successfully");</script>';
					echo '<script type="text/javascript">window.location.href = "exp_in_fac.php";</script>';
				}
				else{
					echo"error";
				}
	}		
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

