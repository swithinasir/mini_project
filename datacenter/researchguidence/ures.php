<?php
session_start();
include("../conn/config.php");
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
  $id=$_POST["id"];
  ?>
	<form class="modal-content animate" action="ures.php"  method="post" enctype="multipart/form-data">
			<br>
			<div class="row">
				<center>
					<INPUT type="hidden" name="id" value="<?php echo $id; ?>" />
					<input type="radio" name="status" value="discontinued" onClick="hideB()">Discontinued &nbsp;&nbsp;
					<input type="radio" name="status" value="completed" onClick="hideA()" > Completed &nbsp;&nbsp;
					<div style="visibility:hidden" id="B"> 
					<input type="text" id="cyear" name="cyear" placeHolder="year of Completion">
					</div>
					<button type="submit" name="update" style="width:auto;">Update</button>
				</center>
			</div>
		
	</form>
<?php
if(isset($_POST["update"])){
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_resg";
 $id =$_POST["id"];
 $status =$_POST["status"];
	if($status == "discontinued")
	{
		$cyear = "discontinued";
	}
	else
	{
		$cyear = $_POST["cyear"];
	}
	$sql4 = "UPDATE `$aaa` SET cyear ='$cyear' WHERE id= '$id'";
				if(mysqli_query($con,$sql4))
				{
					echo '<script language="javascript">alert("Research Guidance Details Updated Successfully");</script>';
					echo '<script type="text/javascript">window.location.href = "res_gui_fac.php";</script>';
				}
				else{
					echo"error";
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

