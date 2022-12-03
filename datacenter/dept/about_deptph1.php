<?php
session_start();
include("../conn/config1.php");
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


</style>


<style>
 .required:after { content:" *";color: #e32; }

.file-upload__label {
  display: block;
  padding: 1em 2em;
  color: #fff;
  background: #222;
  border-radius: .4em;
  transition: background .3s;
  text-align:center

}
    
.file-upload__label:hover {
     cursor: pointer;
     background: #000;
  }  
.file-upload__input {
    position: absolute;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
    font-size: 1;
    width:0;
    height: 100%;
    opacity: 0;
}
body {
	background: #FFF;
	color: #000;
	font: normal normal 12px Verdana, Geneva, Arial, Helvetica, sans-serif;
	margin: 10px;
	padding: 0
}

table, td, a {
	color: #000;
	font: normal normal 12px Verdana, Geneva, Arial, Helvetica, sans-serif
}

h1 {
	font: normal normal 18px Verdana, Geneva, Arial, Helvetica, sans-serif;
	margin: 0 0 5px 0
}

h2 {
	font: normal normal 16px Verdana, Geneva, Arial, Helvetica, sans-serif;
	margin: 0 0 5px 0
}

h3 {
	font: normal normal 13px Verdana, Geneva, Arial, Helvetica, sans-serif;
	color: #008000;
	margin: 0 0 15px 0
}
/* end basic styling                                 */

/* define height and width of scrollable area. Add 16px to width for scrollbar          */
div.tableContainer {
	clear: both;
	border: 1px solid #963;
	height: 285px;
	overflow: auto;
	width: 900px
}

/* Reset overflow value to hidden for all non-IE browsers. */
html>body div.tableContainer {
	overflow: hidden;
	width: 900px
}

/* define width of table. IE browsers only                 */
div.tableContainer table {
	float: left;
	/* width: 740px */
}

/* define width of table. Add 16px to width for scrollbar.           */
/* All other non-IE browsers.                                        */
html>body div.tableContainer table {
	/* width: 756px */
}

/* set table header to a fixed position. WinIE 6.x only                                       */
/* In WinIE 6.x, any element with a position property set to relative and is a child of       */
/* an element that has an overflow property set, the relative value translates into fixed.    */
/* Ex: parent element DIV with a class of tableContainer has an overflow property set to auto */

thead.fixedHeader tr {
	position: relative;
}

/* set THEAD element to have block level attributes. All other non-IE browsers            */
/* this enables overflow to work on TBODY element. All other non-IE, non-Mozilla browsers */

/* make the TH elements pretty */
thead.fixedHeader th {
	background: #C96;;
	border-top: 1px solid #EB8;
	font-weight: normal;
	padding: 4px 3px;
	text-align: center;
	width: 18%
}

html>body tbody.scrollContent {
	display: block;
	height: 262px;
	overflow: auto;
	width: 100%
}

html>body thead.fixedHeader {
	display: table;
	overflow: auto;
	width: 100%
}

/* make TD elements pretty. Provide alternating classes for striping the table */
/* http://www.alistapart.com/articles/zebratables/                             */
tbody.scrollContent td, tbody.scrollContent tr.normalRow td {	
	padding: 4px 3px;
	width: 18%
}



tbody.scrollContent tr.alternateRow td {
	background: #EEE;
	border-bottom: none;
	border-left: none;
	border-right: 1px solid #CCC;
	border-top: 1px solid #DDD;
	padding: 2px 3px 3px 4px
}

</style>
<style>
* {
    box-sizing: border-box;
}

input[type=text],input[type=date], select, textarea {
    width: 100%;
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
input[type=file] {
   width: 100%;
    padding: 12px;
    border-radius: 4px;
    resize: vertical;
}
input[type=button] {
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
input[type=button]:hover {
    background-color: #45a049;
}

/* Set a style for all buttons */

.button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
}
button:hover {
    opacity: 0.8;
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
    .col-25, .col-75, input[type=submit], input[type=button] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/style.min.css" rel="stylesheet">

<style>
.active {
  background-color: #333;
  color: white;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: Skyblue;
}.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: black;
  font-family: inherit;
  margin: 0;
}
 .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>


<title>Admin</title>
<link rel="stylesheet"  href="style.css" />
</head>

<body style="background-color:grey;">
   
  	<!--Start of First PHD update-->

<?php
if(!isset($_POST["update"])){
  $id=$_POST["id"];
  $f=$_POST["f"];
  ?>
	<form class="modal-content animate" action="about_deptph1.php"  method="post" enctype="multipart/form-data">
			<br>
			<div class="row">
				<center>
					<INPUT type="hidden" name="id" value="<?php echo $id; ?>" />
					<INPUT type="hidden" name="f" value="<?php echo $f; ?>" />
					<input type="file" id="file" name="file">
				<p align="center" style="color:red"><b>File Size below 2MB</b></p>
					<button type="submit" name="upload2" style="width:auto;">Upload</button>
				</center>
			</div>
		
	</form>
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

<?php
if(isset($_POST["update"])){
	$id=$_POST["id"];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_dept";
	$sql3="SELECT * FROM `$aaa`  WHERE id = '$id'";
	$result3 = $con->query($sql3);
	$row3 = $result3->fetch_assoc();?>
			<form class="modal-content animate" action="about_deptph1.php"  method="post">
				<br>
			<div class="row">
					<INPUT type="hidden" name="id" value="<?php echo $id; ?>" />
					<div class="col-25"></div>
					<div class="col-25">
						<label for="fname">Academic Year </label>
					</div>
					<div class="col-25">
						<INPUT type="text" name="ayear" value="<?php echo $row3["ayear"] ?>" readonly />
					</div>
			</div>
			<div class="row">
					<div class="col-25"></div>
					<div class="col-25">
						<label for="fname">Intake  </label>
					</div>
					<div class="col-25">
						<INPUT type="text" name="intake1" value="<?php echo $row3["intake3"] ?>"  />
					</div>
			</div>
			<div class="row">
					<div class="col-25"></div>
					<div class="col-25">
						<label for="fname">Afflicated with   </label>
					</div>
					<div class="col-25">
						<INPUT type="text" name="aff1" value="<?php echo $row3["aff3"] ?>"  /><br>
					</div>
			</div>
			<div class="row">
					<div class="col-25"></div>
					<div class="col-25">
						<button type="submit" name="update2" style="width:auto;">Update</button>
					</div>
			</div>
						
			</form>
			<?php
}
if(isset($_POST["update2"])){
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$intake1=$_POST["intake1"]; 
	$aff1=$_POST["aff1"];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_dept";
	$sql5 = "UPDATE `$aaa` SET `ayear`= '$ayear' ,`intake3`= '$intake1' , `aff3`= '$aff1'   WHERE id = '$id'";
						if(mysqli_query($con,$sql5))
						{
							echo '<script language="javascript">alert("Updated Successfully");</script>';
							echo '<script type="text/javascript">window.location.href = "about_deptph.php";</script>';
						}
}

if(isset($_POST["upload2"])){
	$id=$_POST["id"];
	$f=$_POST["f"];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_dept";
	$file = $_FILES['file']['name'];
	$file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	if($f==1)
	{
		$folder="../gallery/aff/".$aaa."/";
	}
	else
	{
		$folder="../gallery/nba/".$aaa."/";
	}
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB	
	// make file name in lower case
	$file=rand(1000,100000)."-".$file;
	$new_file_name = strtolower($file);;
	// make file name in lower case	
	$final_file=str_replace(' ','-',$new_file_name);
	$move=move_uploaded_file($file_loc,$folder.$final_file);
	if($f==1)
	{
		$sql1 = "UPDATE `$aaa` SET `aff_cer3`= '$final_file'  WHERE id = '$id'";
	}
	else
	{
		$sql1 = "UPDATE `$aaa` SET `nba_cer3`= '$final_file'  WHERE id = '$id'";
	}
	
	
						if(mysqli_query($con,$sql1))
						{
							echo '<script language="javascript">alert("Uploaded Successfully");</script>';
							echo '<script type="text/javascript">window.location.href = "about_deptph.php";</script>';
						}
}
?>