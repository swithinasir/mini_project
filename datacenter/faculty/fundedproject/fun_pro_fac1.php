<?php
session_start();
include("../../conn/config.php");
if(isset($_POST["update1"])){
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_funpat";
 $id =$_POST["id"];
 $rowid =$_POST["rowid"];
  $year =$_POST["year"];
$year1="year".$rowid;
$uc1="uc".$rowid;
/*			if(empty($_FILES['file1']['name']))
	{*/
		$final_file1 =0;
/*	}
	else
	{
	$file1 = $_FILES['file1']['name'];
    $file_loc1 = $_FILES['file1']['tmp_name'];
	$file_size1 = $_FILES['file1']['size'];
	$file_type1 = $_FILES['file1']['type'];
	$folder1="../gallery/pro/".$aaa."/";
	// new file size in KB
	//$new_size1 = $file_size1/1024;  
	// new file size in KB	
	// make file name in lower case
	$file1=rand(1000,100000)."-".$file1;
	$new_file_name1 = strtolower($file1);;
	// make file name in lower case	
	$final_file1=str_replace(' ','-',$new_file_name1);
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	}*/
 $uc =$final_file1;
				$sql4 = "UPDATE `$aaa` SET `$year1`='$year' WHERE id= '$id'";
				if(mysqli_query($con,$sql4))
				{
					echo '<script language="javascript">alert("Funded Project Details Updated Successfully");</script>';
					echo '<script type="text/javascript">window.location.href = "fun_pro_fac.php";</script>';
				}
				
}
				?>

<html>
<head>

<meta charset="utf-8">
<style>
.required:after { content:" *";color: #e32; }
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
}
</style>

<style>
* {
    box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
    float: left;
    width: 33.33%;
    padding: 10px;
    height:475px; 
}
.column1 {
    float: left;
    width: 43.33%;
    padding: 10px;
    height:475px; 
}
.column2 {
    float: left;
    width: 23.33%;
    padding: 10px;
    height:475px; 
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

</style>

<style>
.mySlides {display:none;}
</style>


<title>Admin</title>
<link rel="stylesheet"  href="style.css" />
</head>

<body>
   
  <form class="modal-content animate" action="fun_pro_fac1.php" method="post" >

    <div class="container">
	<input type="hidden" name="id" value="<?php echo $_POST['id']; ?>">
	<input type="hidden" name="rowid" value="<?php echo $_POST['rowid']; ?>">
      <label for="uname" class="required"><b>Year of Complition</b></label>
      <input type="text" onFocus="this.value=''" placeholder="Year of Complition" name="year" required>
   <!--   <label for="uname" class="required"><b>UC</b></label>
	  <label class="message" id="msg1" > </label>
	  <input type="file" id="file1" name="file1" required>-->
      <button type="submit" name="update1">Update</button>
      
    </div>
	
  </form>


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
  
	<!-- center of the page-->
	

</div>
<script>
function ad(){
var allowedFiles = [".pdf"];
        var fileUpload = document.getElementById("file1");
        var lblError = document.getElementById("msg1");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(fileUpload.value.toLowerCase())) {
            lblError.innerHTML = "Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.";
            return false;
        }
        lblError.innerHTML = "";
        return true;

}
</script>
<script>
function validate()
{
	
	var valid = true;
	
	valid = valid && ad();
	 return valid;
	
}
 $('form').submit(validate);
</script>

</body>

	
</html>