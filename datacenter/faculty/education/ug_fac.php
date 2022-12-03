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
		
	if ($row["s2key"] == 1 || $row["dkey"] == 1 ) {
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
	<li><a class="active"  href="ug_fac.php" target= "frame1">UG</a></li> 
	<li><a href="pg_fac.php" target= "frame1">PG</a></li>	
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
		
	if ($row["ukey"] == 1 && !isset($_POST["add"])) {
		?>
		
		<div class="container">
    <div class="row">
	<center>
	<h1>
	<label for="fname">Under Graduate</label></h1>
	</center>
      <div class="col-25">
        <label for="fname">Name of the College</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["uname"];?></label>
      </div>
	<?php  if ($row["u1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["u1name"];?></label>
      </div>
	<?php } if ($row["u2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["u2name"];?></label>
      </div>
	  <?php }  ?>
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname">Name of the University</label>
      </div>
     <div class="col-25">
        <label for="fname"><?php echo $row["uuniversity"];?></label>
      </div>
	<?php  if ($row["u1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["u1university"];?></label>
      </div>
	<?php } if ($row["u2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["u2university"];?></label>
      </div>
	  <?php }  ?>
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname">Name of the Degree</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["udegree"];?></label>
      </div>
	<?php  if ($row["u1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["u1degree"];?></label>
      </div>
	<?php } if ($row["u2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["u2degree"];?></label>
      </div>
	  <?php }  ?>
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname">Name of the Branch</label>
      </div>
     <div class="col-25">
        <label for="fname"><?php echo $row["ubranch"];?></label>
      </div>
	<?php  if ($row["u1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["u1branch"];?></label>
      </div>
	<?php } if ($row["u2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["u2branch"];?></label>
      </div>
	  <?php }  ?>
    </div>
	<div class="row">
      <div class="col-25">
        <label for="fname">Mode of Study</label>
      </div>
     <div class="col-25">
        <label for="fname"><?php echo $row["umode"];?></label>
      </div>
	<?php  if ($row["u1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["u1mode"];?></label>
      </div>
	<?php } if ($row["u2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["u2mode"];?></label>
      </div>
	  <?php }  ?>
	</div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Year of passing</label>
      </div>
     <div class="col-25">
        <label for="fname"><?php echo $row["uyear"];?></label>
      </div>
	<?php  if ($row["u1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["u1year"];?></label>
      </div>
	<?php } if ($row["u2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["u2year"];?></label>
      </div>
	  <?php }  ?>
    </div>
   <div class="row">
      <div class="col-25">
        <label for="lname">Percentage/CGPA</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["upercentage"];?></label>
      </div>
	<?php  if ($row["u1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["u1percentage"];?></label>
      </div>
	<?php } if ($row["u2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["u2percentage"];?></label>
      </div>
	  <?php }  ?>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Upload Certificate</label>
      </div>
       
	   <div class="col-25">
       <a href="../../gallery/ugcer/<?php echo $aaa; ?>/<?php echo $row['ucertificate']; ?>" target="_blank">View</a>
      </div>
	    <?php  if ($row["u1key"] == 1) { ?>
	   <div class="col-25">
       <a href="../../gallery/ugcer/<?php echo $aaa; ?>/<?php echo $row['u1certificate']; ?>" target="_blank">View</a>
      </div>
		<?php } if ($row["u2key"] == 1) { ?>
	   <div class="col-25">
       <a href="../../gallery/ugcer/<?php echo $aaa; ?>/<?php echo $row['u2certificate']; ?>" target="_blank">View</a>
      </div>
	  <?php }  ?>
    </div>
</div>
		
		<?php
		if ($row["ukey"] == 1 &&( $row["u1key"] != 1 || $row["u2key"] != 1))
		{
		?>
			 <form action="ug_fac.php"  method="post" >
			<div class="row">			
				<input type="submit" value="Add More" name="add">
			</div>
			</form>
		<?php
		}
	}
	if ($row["ukey"] != 1 || isset($_POST["add"]))
	{
		?>	
		
		
<div class="container">
  <form action="ug_fac.php"  method="post" enctype="multipart/form-data"  onsubmit="return(fileValidation());">
    <div class="row">
	<center>
	<h1>
	<label for="fname">Under Graduate</label></h1>
	</center>
      <div class="col-25">
        <label class="required" for="fname">Name of the College</label>
      </div>
      <div class="col-75">
        <input type="text" id="uname" name="uname" required>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name of the University</label>
      </div>
      <div class="col-75">
        <input type="text" id="uuniversity" name="uuniversity" required>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label  class="required" for="fname">Name of the Degree</label>
      </div>
      <div class="col-75">
        <input type="text" id="udegree" name="udegree" required>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name of the Branch</label>
      </div>
      <div class="col-75">
        <input type="text" id="ubranch" name="ubranch" required>
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Mode of Study</label>
      </div>
      <div class="col-75">
	  
	<input type="radio" name="umode" value="regular"> Regular &nbsp;&nbsp;
  <input type="radio" name="umode" value="parttime"> Part Time &nbsp;&nbsp;
  <input type="radio" name="umode" value="distance"> Distance &nbsp;&nbsp;
  <input type="radio" name="umode" value="weekend"> Week End
	</div>
	</div>
    <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Year of passing</label>
      </div>
      <div class="col-75">
        <input type="text" id="uyear" name="uyear" required>
      </div>
    </div>
   <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Percentage/CGPA</label>
      </div>
      <div class="col-75">
        <input type="text" id="upercentage" name="upercentage" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label class="required" for="subject">Upload Certificate(only PDF Fromat and file size below 2MB)</label>
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
$uname=$_POST["uname"];
$uuniversity=$_POST["uuniversity"];
$udegree =$_POST["udegree"];
$ubranch =$_POST["ubranch"];
$umode =$_POST["umode"];
$uyear =$_POST["uyear"];
$upercentage =$_POST["upercentage"];
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";

	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/ugcer/".$aaa."/";
	
	// new file size in KB
	//$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
	
	$sql1="SELECT * FROM `$aaa`";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$id=$row["sid"];
	if ($id == $sid) {
	if ($row["ukey"] == 1) {
		if ($row["u1key"] == 1) {
	 $sql = "UPDATE `$aaa` SET `u2name`='$uname',`u2university`='$uuniversity',`u2degree`='$udegree',`u2branch`='$ubranch',`u2mode`='$umode',`u2year`='$uyear',`u2percentage`='$upercentage',`u2certificate`='$final_file',`u2key`=1 WHERE sid= '$sid'";
		}
		else
		{
	$sql = "UPDATE `$aaa` SET `u1name`='$uname',`u1university`='$uuniversity',`u1degree`='$udegree',`u1branch`='$ubranch',`u1mode`='$umode',`u1year`='$uyear',`u1percentage`='$upercentage',`u1certificate`='$final_file',`u1key`=1 WHERE sid= '$sid'";

		}
	}
	else
	{
	 $sql = "UPDATE `$aaa` SET `uname`='$uname',`uuniversity`='$uuniversity',`udegree`='$udegree',`ubranch`='$ubranch',`umode`='$umode',`uyear`='$uyear',`upercentage`='$upercentage',`ucertificate`='$final_file',`ukey`=1 WHERE sid= '$sid'";
	}	
		if(mysqli_query($con,$sql))
	{
	echo '<script language="javascript">alert("Under Graduate Data Inserted Sucessfully");</script>';
	echo '<script type="text/javascript">window.location.href = "pg_fac.php";</script>';

	}
	}
	}  
	}
}
}
}
	else{
		echo '<script language="javascript">alert("Check Whether You Have Entered Your Previous Education Details");</script>';
					echo '<script type="text/javascript">window.location.href = "twelve_fac.php";</script>';
	}
	}}
	else{
		echo '<script language="javascript">alert("Check Whether You Have Entered Your Previous Education Details");</script>';
					echo '<script type="text/javascript">window.location.href = "twelve_fac.php";</script>';
	}
?>