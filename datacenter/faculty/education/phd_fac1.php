<?php
session_start();
include("../../conn/config.php");

$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		
	if ($row["pkey"] == 1) {
?>
<html>
<style>
.required:after { content:" *";color: #e32; }
* {
    box-sizing: border-box;
}

input[type=text],input[type=month],td, select, textarea {
    width: 75%;
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
    background-color: #111;
}
</style>
<style>
/* Full-width input fields */


/* Set a style for all buttons */
.button1 {
border-radius: 16px;
  background-color: #008CBA; 
  border: none;
  color: white;
  padding: 15px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  width:20%
}
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.container {
    padding: 16px;
}
/* Extra styles for the cancel button */


/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
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
    width: 80%; /* Could be more or less, depending on screen size */
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

<nav class="navbar navbar-inverse navbar-fixed-top">
<ul>
	<li><a href="ten_fac.php" target= "frame1" >10<sup>th</sup></a></li> 
	<li><a href="twelve_fac.php" target= "frame1">12<sup>th</sup>or Diploma</a></li>		
	<li><a href="ug_fac.php" target= "frame1">UG</a></li> 
	<li><a href="pg_fac.php" target= "frame1">PG</a></li>	
	<li><a href="mphil_fac.php" target= "frame1">M.Phil</a></li> 
	<li><a class="active"  href="phd_fac.php" target= "frame1">Ph.D</a></li> 
	<li><a href="edu_other.php" target= "frame1">Others</a></li>   
</ul>
</nav>
<br>
   <br><br> 
   
    <div class="row">
	<div class="col-25"></div>
   
   <div class="col-25"><ul style="background-color:white;"><li style=" background-color: skyblue;"><a href="phd_fac.php"  >Completed</a></li></ul></div>
    <div class="col-25"><ul style="background-color: white;"><li style=""><a href="#" class="active" >Pursuing</a></li></ul></div>
	
	<div class="col-25"></div>
	
	</div>

<br>

<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		
	if ($row["phkey"] == 1 && $row["ph1key"] != 1 && $row["ph2key"] != 1) {
	
if ($row["phyear"] == NULL) {
	
		?>
		
		<div class="container" >
    <div class="row">
	<TABLE id="dataTable" width="100%" border="1">
	<TR>
			<TH>Name of the College</TH>
			<TH>Name of the University</TH>
			<TH>Specialization</TH>
			<TH>Name Of  Discipline</TH>
			<TH>Mode of Study</TH>
			<TH>Year of Reg</TH>
			<TH>Title of THESIS</TH>
			<TH>Name of the Guide</TH>
			
							
	</TR>
	<TR>
			<TD><?php echo $row["phname"];?></TD>
			<TD><?php echo $row["phuniversity"];?></TD>
			<TD><?php echo $row["phspec"];?></TD>
			<TD><?php echo $row["phbranch"];?></TD>
			<TD><?php echo $row["phmode"];?></TD>
			<TD><?php echo $row["phyreg"];?></TD>
			<TD><?php echo $row["phthesis"];?></TD>
			<TD><?php echo $row["phguide"];?></TD>
			<TD> 
			<form action="phd_fac2.php" method="post">
			 <input type="submit" name="form1" value="update">		
			</form>
			</TD>
							
	</TR>
	</Table>
	</div>
	</div>
	<?php
	}
	}
if ($row["phkey"] == 1 && $row["ph1key"] == 1 && $row["ph2key"] != 1) {
	if ($row["phyear"] == NULL || $row["ph1year"] == NULL ) {
		?>
		
		<div class="container" >
    <div class="row">
	<TABLE id="dataTable" width="100%" border="1">
	<TR>
			<TH>Name of the College</TH>
			<TH>Name of the University</TH>
			<TH>Specialization</TH>
			<TH>Name Of  Discipline</TH>
			<TH>Mode of Study</TH>
			<TH>Year of Reg</TH>
			<TH>Title of THESIS</TH>
			<TH>Name of the Guide</TH>
			
							
	</TR>
	<?php
	if ($row["phyear"] == NULL ) {
?>
	<TR>
			<TD><?php echo $row["phname"];?></TD>
			<TD><?php echo $row["phuniversity"];?></TD>
			<TD><?php echo $row["phspec"];?></TD>
			<TD><?php echo $row["phbranch"];?></TD>
			<TD><?php echo $row["phmode"];?></TD>
			<TD><?php echo $row["phyreg"];?></TD>
			<TD><?php echo $row["phthesis"];?></TD>
			<TD><?php echo $row["phguide"];?></TD>
			<TD> 
<form action="phd_fac2.php" method="post">
			 <input type="submit" name="form1" value="update">			
			</form>		</TD>
							
	</TR>
	<?php
	}
if ($row["ph1year"] == NULL ) {
	?>
	<TR>
			<TD><?php echo $row["ph1name"];?></TD>
			<TD><?php echo $row["ph1university"];?></TD>
			<TD><?php echo $row["ph1spec"];?></TD>
			<TD><?php echo $row["ph1branch"];?></TD>
			<TD><?php echo $row["ph1mode"];?></TD>
			<TD><?php echo $row["ph1yreg"];?></TD>
			<TD><?php echo $row["ph1thesis"];?></TD>
			<TD><?php echo $row["ph1guide"];?></TD>
			<TD> 
			<form action="phd_fac2.php" method="post">
			 <input type="submit" name="form2" value="update">		
			</form>
			</TD>
							
	</TR>
<?php }?>
	</Table>
	</div>
	</div>
		
		<?php
	}
	}
	if ($row["phkey"] == 1 && $row["ph1key"] == 1 && $row["ph2key"] == 1) {
		if ($row["phyear"] == NULL || $row["ph1year"] == NULL || $row["ph2year"] == NULL ) {

		?>
		
		<div class="container" >
    <div class="row">
	<TABLE id="dataTable" width="100%" border="1">
	<TR>
			<TH>Name of the College</TH>
			<TH>Name of the University</TH>
			<TH>Specialization</TH>
			<TH>Name of the Branch</TH>
			<TH>Mode of Study</TH>
			<TH>Year of Reg</TH>
			<TH>Title of THESIS</TH>
			<TH>Name of the Guide</TH>
			
							
	</TR>
	<?php 
	if ($row["phyear"] == NULL ) {
	?>
	<TR>
			<TD><?php echo $row["phname"];?></TD>
			<TD><?php echo $row["phuniversity"];?></TD>
			<TD><?php echo $row["phspec"];?></TD>
			<TD><?php echo $row["phbranch"];?></TD>
			<TD><?php echo $row["phmode"];?></TD>
			<TD><?php echo $row["phyreg"];?></TD>
			<TD><?php echo $row["phthesis"];?></TD>
			<TD><?php echo $row["phguide"];?></TD>
			<TD> 
<form action="phd_fac2.php" method="post">
			  <input type="submit" name="form1" value="update">	
			</form>			</TD>
							
	</TR>
	<?php 
	}
if ($row["ph1year"] == NULL ) {
	?>
	<TR>
			<TD><?php echo $row["ph1name"];?></TD>
			<TD><?php echo $row["ph1university"];?></TD>
			<TD><?php echo $row["ph1spec"];?></TD>
			<TD><?php echo $row["ph1branch"];?></TD>
			<TD><?php echo $row["ph1mode"];?></TD>
			<TD><?php echo $row["ph1yreg"];?></TD>
			<TD><?php echo $row["ph1thesis"];?></TD>
			<TD><?php echo $row["ph1guide"];?></TD>
			<TD> 
<form action="phd_fac2.php" method="post">
			  <input type="submit" name="form2" value="update">		
			</form>			</TD>
							
	</TR>
	<?php
	}
if ($row["ph2year"] == NULL ) {
	?>
	<TR>
			<TD><?php echo $row["ph2name"];?></TD>
			<TD><?php echo $row["ph2university"];?></TD>
			<TD><?php echo $row["ph2spec"];?></TD>
			<TD><?php echo $row["ph2branch"];?></TD>
			<TD><?php echo $row["ph2mode"];?></TD>
			<TD><?php echo $row["ph2yreg"];?></TD>
			<TD><?php echo $row["ph2thesis"];?></TD>
			<TD><?php echo $row["ph2guide"];?></TD>
			<TD> 
<form action="phd_fac2.php" method="post">
			 <input type="submit" name="form3" value="update">		
			</form>			</TD>
							
	</TR>
	<?php
}
	?>
	</Table>
	</div>
	</div>
		
		<?php
		}
	}
	if ($row["phkey"] != 1 || $row["ph1key"] != 1 || $row["ph2key"] != 1)
	{
		?>	
<div class="container">
  <form action="phd_fac1.php"  method="post" enctype="multipart/form-data">
    <div class="row">
	<center>
	<h1>
	<label for="fname">PhD</label></h1>
	</center>            
      <div class="col-25">
        <label class="required" for="fname">Name of the College</label>
      </div>
      <div class="col-75">
        <input type="text" id="phname" name="phname" >
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label  class="required" for="fname">Name of the University</label>
      </div>
      <div class="col-75">
        <input  type="text" id="phuniversity" name="phuniversity" >
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Specialization</label>
      </div>
      <div class="col-75">
        <input type="text" id="phspec" name="phspec" >
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name of the Branch</label>
      </div>
      <div class="col-75">
        <input type="text" id="phbranch" name="phbranch" >
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Mode of Study</label>
      </div>
      <div class="col-75"> 
	<input type="radio" name="phmode" value="regular"> Regular &nbsp;&nbsp;
  <input type="radio" name="phmode" value="parttime"> Part Time &nbsp;&nbsp;
  <input type="radio" name="phmode" value="distance"> Distance &nbsp;&nbsp;
  <input type="radio" name="phmode" value="weekend"> Week End
	</div>
	</div>
    <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Year of Registeration</label>
      </div>
      <div class="col-75">
        <input type="month" id="phyreg" name="phyreg">
      </div>
    </div>  
	<div class="row">
      <div class="col-25">
        <label class="required" for="lname">Title of THESIS</label>
      </div>
      <div class="col-75">
        <input type="text" id="phthesis" name="phthesis">
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label class="required" for="lname">Name of the Guide</label>
      </div>
      <div class="col-75">
        <input type="text" id="phguide" name="phguide">
      </div>
    </div>
   
	
    <div class="row">
      <input type="submit" value="Submit" name="submit">
    </div>
  </form>
</div>
<?php
}
	}
	}
	   
	   
	?>
	</div>
	<!--Start of First PHD update-->

	<div id="id01" class="modal">
  
  <form class="modal-content animate" action="phd_fac1.php"  method="post" enctype="multipart/form-data" onsubmit="return(fileValidation());">
    <div align="right">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">x</span>    
    </div>

    <div class="container">
	 <div class="row">
	<div class="col-25">
      <label class="required" for="year"><b>Year of Complition</b></label>
	</div>
	<div class="col-25">
      <input type="month" id="phyear" name="phyear" required>
	</div>
	
	</div>
	<br>
	 <div class="row">
	<div class="col-25">
      <label class="required" for="file"><b>Upload Certificate(only PDF format)</b></label>
	   <span id="msg1" style="color: red;"></span>
	  </div>
	<div class="col-50">
     <input type="file" id="file" name="file">
    </div>
	<div class="col-25">  </div>
	<div class="col-25">
      <button type="submit" class="button1 button2" name="update1" style="width:auto;">Update</button>
     </div>
	</div>    
    </div>
</div>
<script>
  function fileValidation()
{
	
	var valid = true;
	valid = valid && ad();
	 return valid;
	
}
 $('form').submit(validate);
</script>
<script>
function ad(){
var allowedFiles = [".pdf"];
        var fileUpload = document.getElementById("file");
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
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

<!--End  of First PHD update-->
<!--Start of second PHD update-->
<div id="id02" class="modal">
  
  <form class="modal-content animate" action="phd_fac1.php"  method="post" enctype="multipart/form-data">
    <div align="right">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">x</span>    
    </div>

    <div class="container">
	 <div class="row">
	<div class="col-25">
      <label for="year"><b>Year of Complition</b></label>
	</div>
	<div class="col-25">
      <input type="text"  name="phyear" required>
	</div>
	
	</div>
	<br>
	 <div class="row">
	<div class="col-25">
      <label for="file"><b>Upload Certificate(only PDF Format)</b></label>
	  </div>
	<div class="col-50">
     <input type="file" id="file" name="file">
    </div>
	<div class="col-25">  </div>
	<div class="col-25">
      <button class="button1 button2" name="update2" style="width:auto;">Update</button>
     </div>
	</div>    
    </div>
</div>
<!--End  of Second PHD update-->
<!--Start of Third PHD update-->
<div id="id03" class="modal">
  
  <form class="modal-content animate" action="phd_fac1.php"  method="post" enctype="multipart/form-data">
    <div align="right">
      <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">x</span>    
    </div>

    <div class="container">
	 <div class="row">
	<div class="col-25">
      <label for="year"><b>Year of Complition</b></label>
	</div>
	<div class="col-25">
      <input type="text"  name="phyear" required>
	</div>
	
	</div>
	<br>
	 <div class="row">
	<div class="col-25">
      <label for="file"><b>Upload Certificate(only PDF Format)</b></label>
	  </div>
	<div class="col-50">
     <input type="file" id="file" name="file">
    </div>
	<div class="col-25">  </div>
	<div class="col-25">
      <button class="button1 button2" name="update3" style="width:auto;">Update</button>
     </div>
	</div>    
    </div>
</div>
<!--End  of Third PHD update-->
</html>
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
if(isset($_POST["submit"])){
$phname=$_POST["phname"];
$phuniversity=$_POST["phuniversity"];
$phspec =$_POST["phspec"];
$phbranch =$_POST["phbranch"];
$phmode =$_POST["phmode"];
$phyreg =$_POST["phyreg"];
$phthesis =$_POST["phthesis"];
$phguide =$_POST["phguide"];
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";

	
		$sql1="SELECT * FROM `$aaa`";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$id=$row["sid"];
	if ($id == $sid) {
	if ($row["phkey"] == 1) {
		if ($row["ph1key"] == 1) {
    $sql = "UPDATE `$aaa` SET `ph2name`='$phname',`ph2university`='$phuniversity',`ph2spec`='$phspec',`ph2branch`='$phbranch',`ph2mode`='$phmode',`ph2yreg`='$phyreg',`ph2thesis`='$phthesis',`ph2guide`='$phguide',`ph2key`=1 WHERE sid= '$sid'";	
		}
		else
		{
    $sql = "UPDATE `$aaa` SET `ph1name`='$phname',`ph1university`='$phuniversity',`ph1spec`='$phspec',`ph1branch`='$phbranch',`ph1mode`='$phmode',`ph1yreg`='$phyreg',`ph1thesis`='$phthesis',`ph1guide`='$phguide',`ph1key`=1 WHERE sid= '$sid'";	
		}
	}
	else
	{
     $sql = "UPDATE `$aaa` SET `phname`='$phname',`phuniversity`='$phuniversity',`phspec`='$phspec',`phbranch`='$phbranch',`phmode`='$phmode',`phyreg`='$phyreg',`phthesis`='$phthesis',`phguide`='$phguide',`phkey`=1 WHERE sid= '$sid'";	
	}	
		
		if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("P.hd Data Inserted Sucessfully");</script>';
	echo '<script type="text/javascript">window.location.href = "ten_fac.php";</script>';
	
	}
	}
     
}
}
}
}
	else{
		echo '<script language="javascript">alert("Check Whether You Have Entered Your Previous Education Details");</script>';
					echo '<script type="text/javascript">window.location.href = "pg_fac.php";</script>';
	}
	}}
	else{
		echo '<script language="javascript">alert("Check Whether You Have Entered Your Previous Education Details");</script>';
					echo '<script type="text/javascript">window.location.href = "pg_fac.php";</script>';
	}
?>
