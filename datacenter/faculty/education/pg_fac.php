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
		
	if ($row["ukey"] == 1) {
?>
<html>
<style>
.required:after { content:" *";color: #e32; }
* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
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

<nav class="navbar navbar-inverse navbar-fixed-top">
<ul>
	<li><a href="ten_fac.php" target= "frame1" >10<sup>th</sup></a></li> 
	<li><a href="twelve_fac.php" target= "frame1">12<sup>th</sup>or Diploma</a></li>		
	<li><a href="ug_fac.php" target= "frame1">UG</a></li> 
	<li><a class="active"  href="pg_fac.php" target= "frame1">PG</a></li>	
	<li><a href="mphil_fac.php" target= "frame1">M.Phil</a></li> 
	<li><a href="phd_fac.php" target= "frame1">Ph.D</a></li>  
	<li><a href="edu_other.php" target= "frame1">Others</a></li>  
</ul>
</nav>
<br>
   <br><br> 
<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		
	if ($row["pkey"] == 1 && !isset($_POST["add"])) {
		?>
		
		<div class="container">
    <div class="row">
	<center>
	<h1>
	<label for="fname">Post Graduate</label></h1>
	</center>
      <div class="col-25">
        <label for="fname">Name of the College</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["pname"];?></label>
      </div>
	<?php  if ($row["p1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["p1name"];?></label>
      </div>
	<?php } if ($row["p2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["p2name"];?></label>
      </div>
	  <?php }  ?>
    </div>
   
	 <div class="row">
      <div class="col-25">
        <label for="fname">Name of the University</label>
      </div>
     <div class="col-25">
        <label for="fname"><?php echo $row["puniversity"];?></label>
      </div>
	<?php  if ($row["p1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["p1university"];?></label>
      </div>
	<?php } if ($row["p2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["p2university"];?></label>
      </div>
	  <?php }  ?>
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname">Name of the Degree</label>
      </div>
       <div class="col-25">
        <label for="fname"><?php echo $row["pdegree"];?></label>
      </div>
	<?php  if ($row["p1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["p1degree"];?></label>
      </div>
	<?php } if ($row["p2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["p2degree"];?></label>
      </div>
	  <?php }  ?>
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname">Name of the Branch</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["pbranch"];?></label>
      </div>
	<?php  if ($row["p1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["p1branch"];?></label>
      </div>
	<?php } if ($row["p2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["p2branch"];?></label>
      </div>
	  <?php }  ?>
    </div>
	<div class="row">
      <div class="col-25">
        <label for="fname">Mode of Study</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["pmode"];?></label>
      </div>
	<?php  if ($row["p1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["p1mode"];?></label>
      </div>
	<?php } if ($row["p2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["p2mode"];?></label>
      </div>
	  <?php }  ?>
	</div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Year of passing</label>
      </div>
     <div class="col-25">
        <label for="fname"><?php echo $row["pyear"];?></label>
      </div>
	<?php  if ($row["p1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["p1year"];?></label>
      </div>
	<?php } if ($row["p2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["p2year"];?></label>
      </div>
	  <?php }  ?>
    </div>
   <div class="row">
      <div class="col-25">
        <label for="lname">Percentage/CGPA</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["ppercentage"];?></label>
      </div>
	<?php  if ($row["p1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["p1percentage"];?></label>
      </div>
	<?php } if ($row["p2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["p2percentage"];?></label>
      </div>
	  <?php }  ?>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Upload Certificate</label>
      </div>
       
	   <div class="col-25">
       <a href="../../gallery/pgcer/<?php echo $aaa; ?>/<?php echo $row['pcertificate']; ?>" target="_blank">View</a>
      </div>
	    <?php  if ($row["p1key"] == 1) { ?>
	   <div class="col-25">
       <a href="../../gallery/pgcer/<?php echo $aaa; ?>/<?php echo $row['p1certificate']; ?>" target="_blank">View</a>
      </div>
		<?php } if ($row["p2key"] == 1) { ?>
	   <div class="col-25">
       <a href="../../gallery/pgcer/<?php echo $aaa; ?>/<?php echo $row['p2certificate']; ?>" target="_blank">View</a>
      </div>
	  <?php }  ?>
    </div>
	
   
</div>
		
		<?php
		if ($row["pkey"] == 1 &&( $row["p1key"] != 1 || $row["p2key"] != 1))
		{
		?>
			 <form action="pg_fac.php"  method="post" >
			<div class="row">			
				<input type="submit" value="Add More" name="add">
			</div>
			</form>
		<?php
		}
	}
	if ($row["pkey"] != 1 || isset($_POST["add"]))
	{
		?>	
<div class="container">
  <form action="pg_fac.php"  method="post" enctype="multipart/form-data"  onsubmit="return(fileValidation());">
    <div class="row">
	<center>
	<h1>
	<label for="fname">Post Graduate</label></h1>
	</center>
      <div class="col-25">
        <label class="required" for="fname">Name of the College</label>
      </div>
      <div class="col-75">
        <input type="text" id="pname" name="pname" required>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name of the University</label>
      </div>
      <div class="col-75">
        <input type="text" id="puniversity" name="puniversity" required>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name of the Degree</label>
      </div>
      <div class="col-75">
        <input type="text" id="pdegree" name="pdegree" required>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name of the Branch</label>
      </div>
      <div class="col-75">
        <input type="text" id="pbranch" name="pbranch" required>
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Mode of Study</label>
      </div>
      <div class="col-75">
	  
	<input type="radio" name="pmode" value="regular"> Regular &nbsp;&nbsp;
  <input type="radio" name="pmode" value="parttime"> Part Time &nbsp;&nbsp;
  <input type="radio" name="pmode" value="distance"> Distance &nbsp;&nbsp;
  <input type="radio" name="pmode" value="weekend"> Week End
	</div>
	</div>
    <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Year of passing</label>
      </div>
      <div class="col-75">
        <input type="text" id="pyear" name="pyear" required>
      </div>
    </div>
   <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Percentage/CGPA</label>
      </div>
      <div class="col-75">
        <input type="text" id="ppercentage" name="ppercentage" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label class="required" for="subject">Upload Certificate(only PDF Format and file size below 2MB)</label>
		 <span id="msg1" style="color: red;"></span>
      </div>
       
	   <div class="col-75">
       <input type="file" id="file" name="file" required>
      </div>
    </div>
	
    <div class="row">
      <input type="submit" value="Submit" name="submit">
    </div>
  </form>
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
            lblError.innerHTML = "Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only. File size should be below 2MB";
            return false;
        }
        lblError.innerHTML = "";
        return true;

}
</script>
<?php
}
	}
	}
	   
	   
	?>
</html>
<?php


if(isset($_POST["submit"])){
$pname=$_POST["pname"];
$puniversity=$_POST["puniversity"];
$pdegree =$_POST["pdegree"];
$pbranch =$_POST["pbranch"];
$pmode =$_POST["pmode"];
$pyear =$_POST["pyear"];
$ppercentage =$_POST["ppercentage"];
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";

	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/pgcer/".$aaa."/";
	
	// new file size in KB
	//$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
	$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		
	if ($row["pkey"] == 1) {
		if ($row["p1key"] == 1) {
	 $sql = "UPDATE `$aaa` SET `p2name`='$pname',`p2university`='$puniversity',`p2degree`='$pdegree',`p2branch`='$pbranch',`p2mode`='$pmode',`p2year`='$pyear',`p2percentage`='$ppercentage',`p2certificate`='$final_file',`p2key`=1 WHERE sid= '$sid'";
		}
		else
		{
	$sql = "UPDATE `$aaa` SET `p1name`='$pname',`p1university`='$puniversity',`p1degree`='$pdegree',`p1branch`='$pbranch',`p1mode`='$pmode',`p1year`='$pyear',`p1percentage`='$ppercentage',`p1certificate`='$final_file',`p1key`=1 WHERE sid= '$sid'";

		}
	}
	else
	{
	 $sql = "UPDATE `$aaa` SET `pname`='$pname',`puniversity`='$puniversity',`pdegree`='$pdegree',`pbranch`='$pbranch',`pmode`='$pmode',`pyear`='$pyear',`ppercentage`='$ppercentage',`pcertificate`='$final_file',`pkey`=1 WHERE sid= '$sid'";
	}		
		if(mysqli_query($con,$sql))
	{
	echo '<script language="javascript">alert("Post Graduate Data Inserted Sucessfully");</script>';
	echo '<script type="text/javascript">window.location.href = "mphil_fac.php";</script>';
		header("Location: ");
	}
	}
       
	}
	   }
}
}
	else{
		echo '<script language="javascript">alert("Check Whether You Have Entered Your Previous Education Details");</script>';
					echo '<script type="text/javascript">window.location.href = "ug_fac.php";</script>';
	}
	}}
	else{
		echo '<script language="javascript">alert("Check Whether You Have Entered Your Previous Education Details");</script>';
					echo '<script type="text/javascript">window.location.href = "ug_fac.php";</script>';
	}
?>